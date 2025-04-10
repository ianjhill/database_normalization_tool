# IMPORTS
import pandas as pd
from itertools import combinations
import mysql.connector
from collections import defaultdict


def showcase_csv_format(file_path):
    """
    Asks the user for the file import path
    and displays key information and the format 
    of the csv file.
    """
    # file_path = input("Please enter the file name: ")
    # CHANGE TO file_path
    df = pd.read_csv(file_path)

    # Print out relevant information
    print("\n-- CSV FILE INFORMATION --")
    print(f"Number of rows: {df.shape[0]}")
    print(f"Number of columns: {df.shape[1]}\n")

    print("-- SAMPLE RECORDS --")
    print(df.head(), "\n")

    print("-- ATTRIBUTE DATA TYPES --")
    print(df.dtypes, "\n")

    # Return dataframe for normalization process
    return df


def get_fds_primarykeys():
    """
    Asks the user for primary keys and functional dependencies
    of the dataset and returns them.
    """
    func_deps = []
    fds = input("Please enter the functional dependencies (separated by comma) (A->B,C->D)").split(',')

    # Split functional dependencies into dependent and independent
    for fd in fds:
        lhs, rhs = fd.split('->')
        func_deps.append(([lhs.strip()], rhs.strip()))
    primary_keys = input("Please enter the primary keys (separated by comma): ").split(',')

    # Return formatted functional dependencies and primary keys from user
    return fds, primary_keys


def compute_closure(attributes, fds):
    """
    This function computes the closure of a set of attributes utilizing
    specified functional dependencies.
    """
    closure = set(attributes)
    changed = True
    while changed:
        changed = False
        for lhs, rhs in fds:
            if set(lhs).issubset(closure) and rhs not in closure:
                closure.add(rhs)
                changed = True
    # Return closure
    return closure


def verify_fds(df, fds):
    """
    This function validates the functional dependencies 
    obtained from the user to make sure they are within
    proper parameters of the relation.
    """
    print("Verifying functional dependencies...\n")
    for lhs, rhs in fds:
        unique_lhs = df[lhs + [rhs]].drop_duplicates()
        grouped = unique_lhs.groupby(lhs)[rhs].nunique()
        if (grouped > 1).any():
            print(f"FD {lhs} → {rhs} is NOT valid in the data.")
        else:
            print(f"FD {lhs} → {rhs} is valid.")


def detect_partial_dependencies(fds, primary_key):
    """
    This function detect potential partial dependencies before normalization.
    """

    if len(primary_key) < 2:
        print("Primary key is not composite — no partial dependencies to detect.\n")
        return

    print("\nDetecting partial dependencies...\n")
    for lhs, rhs in fds:
        if set(lhs).issubset(set(primary_key)) and set(lhs) != set(primary_key):
            print(f"Partial dependency detected: {lhs} → {rhs}")


def detect_transitive_dependencies(fds, primary_key):
    """
    This function detects potential transitive dependencies
    before normalization.
    """
    print("\nDetecting transitive dependencies...\n")
    pk_closure = compute_closure(primary_key, fds)
    direct_deps = {rhs for lhs, rhs in fds if set(lhs) == set(primary_key)}
    there_are_transitive_dependencies = False
    for lhs, rhs in fds:
        if not set(lhs).issubset(primary_key) and rhs in pk_closure and rhs not in direct_deps:
            print(f"Transitive dependency detected: {lhs} → {rhs}")
            there_are_transitive_dependencies = True
    if there_are_transitive_dependencies == False:
        print("No Transitive Dependencies Found!")


def suggest_candidate_keys(df, fds):
    """
    This function suggests potential candidate keys based on 
    functional dependencies on the dataframe.
    """
    attributes = list(df.columns)
    print("\nSuggesting candidate keys...\n")

    for i in range(1, len(attributes) + 1):
        for subset in combinations(attributes, i):
            closure = compute_closure(subset, fds)
            if set(closure) == set(attributes):
                print(f"Candidate key found: {subset}")
                return
    print("No candidate key found using given FDs.")


def check_1NF(df):
    """
    This function checks the relation for first normal form violations
    and proceeds to decompose the relation if any violations are found.
    i.e. Multi-valued attributes or repeat rows
    """
    delimiters = [',', ';', '|', '/']
    print("Checking 1NF\n")

    for col in df.select_dtypes(include='object'):
        # Create a regex pattern to match any of the delimiters
        pattern = '|'.join([f'\\{d}' for d in delimiters])
        # Check if any values contain multi-values
        has_multivalued = df[col].astype(str).str.contains(pattern, na=False)
        if has_multivalued.any():
            print(f"Column '{col}' contains multi-valued entries. Cleaning...")

            # Keep only the first value before the first delimiter
            df[col] = df[col].astype(str).str.split(pattern).str[0].str.strip()

    print("Already in 1NF (No multi-valued attributes).")
    # Returns the decomposed dataframe
    return df


def check_2NF(df, fds, primary_key):
    """
    This function checks for 2nd normal form violations and decomposes
    relation accordingly.
    i.e. Partial dependencies
    """
    print("Checking for partial dependencies...\n")

    if len(primary_key) < 2:
        print("Primary key is not composite. Table is already in 2NF.\n")
        return [df]

    all_attrs = set(df.columns)
    prime_attrs = set(primary_key)
    non_prime_attrs = all_attrs - prime_attrs

    # Collect all partial dependencies
    partial_deps = []
    for lhs, rhs in fds:
        if set(lhs).issubset(prime_attrs) and set(lhs) != prime_attrs and rhs in non_prime_attrs:
            partial_deps.append((tuple(lhs), rhs))

    if not partial_deps:
        print("No partial dependencies found. Table is in 2NF.\n")
        # Returns entered dataframe if no partial dependencies are detected
        return [df]

    print("Partial dependencies detected:")
    for lhs, rhs in partial_deps:
        print(f"  - {list(lhs)} → {rhs}")

    # Group by LHS to eliminate duplicate tables
    lhs_to_rhs = defaultdict(set)
    for lhs, rhs in partial_deps:
        lhs_to_rhs[lhs].add(rhs)

    new_relations = []
    handled_rhs = set()

    # Create separate tables for partial dependencies
    for lhs, rhs_set in lhs_to_rhs.items():
        table_cols = list(set(lhs).union(rhs_set))
        new_df = df[table_cols].drop_duplicates().reset_index(drop=True)
        new_relations.append(new_df)
        handled_rhs.update(rhs_set)

    # Remaining attributes (excluding already extracted RHS values)
    remaining_attrs = list(all_attrs - handled_rhs)
    remaining_df = df[remaining_attrs].drop_duplicates().reset_index(drop=True)
    new_relations.append(remaining_df)

    print("\nDecomposition completed. New tables satisfy 2NF.\n")
    for i, table in enumerate(new_relations):
        print(f"Table {i+1} Columns: {list(table.columns)}")
    # Return decomposed relation/s
    return new_relations


def check_3NF(df, fds, primary_key):
    """
    This function checks for 3rd normal form violations and decomposes
    relation accordingly.
    i.e. Transitive dependencies
    """
    print("Checking for transitive dependencies (3NF)...\n")

    all_attrs = set(df.columns)
    prime_attrs = set(primary_key)
    non_prime_attrs = all_attrs - prime_attrs

    transitive_deps = []

    # Detect transitive dependencies
    for lhs, rhs in fds:
        lhs_closure = compute_closure(lhs, fds)
        is_superkey = lhs_closure >= all_attrs
        if not is_superkey and rhs in non_prime_attrs:
            transitive_deps.append((lhs, rhs))

    if not transitive_deps:
        print("No transitive dependencies found. Table is in 3NF.")
        # Returns the given relation/s if no transtive dependencies are found.
        return [df]

    print("Transitive dependencies found:")
    for lhs, rhs in transitive_deps:
        print(f"  - {lhs} → {rhs}")

    # Decompose table to resolve transitive dependencies
    new_relations = []
    handled_rhs = set()

    for lhs, rhs in transitive_deps:
        new_attrs = set(lhs + [rhs])
        new_df = df[list(new_attrs)].drop_duplicates().reset_index(drop=True)
        new_relations.append(new_df)
        handled_rhs.add(rhs)

    # Create a table for the remaining attributes
    remaining_attrs = list(all_attrs - handled_rhs)
    remaining_df = df[remaining_attrs].drop_duplicates().reset_index(drop=True)
    new_relations.append(remaining_df)

    print("\nDecomposition completed. New tables satisfy 3NF.\n")
    for i, table in enumerate(new_relations):
        print(f"Table {i+1} Columns: {list(table.columns)}")

    # Returns the decomposed relations after normalization
    return new_relations


def filter_fds_for_table(fds, table_columns):
    """
    This function filters the functional dependencies for the table columns
    for resolving BCNF
    """
    return [(lhs, rhs) for lhs, rhs in fds if set(lhs + [rhs]).issubset(set(table_columns))]


def is_superkey(attributes, fds, all_columns):
    """
    This function checks if an attribute/s is/are a super key
    """
    return compute_closure(attributes, fds) >= set(all_columns)


def resolve_bcnf(df, fds):
    """
    This function checks for BCNF violations and decomposes accordingly
    i.e. Ensures every determinant is a super key
    """
    print(f"\nChecking BCNF for table: {list(df.columns)}")

    for lhs, rhs in fds:
        if not is_superkey(lhs, fds, df.columns):
            print(f"BCNF violation found: {lhs} → {rhs} (LHS is not a superkey)")

            # Split into two relations
            R1_attrs = list(set(lhs + [rhs]))
            R2_attrs = list(set(df.columns) - set([rhs]) | set(lhs))

            R1 = df[R1_attrs].drop_duplicates().reset_index(drop=True)
            R2 = df[R2_attrs].drop_duplicates().reset_index(drop=True)

            print("Decomposing into:")
            print(f"  - R1: {R1_attrs}")
            print(f"  - R2: {R2_attrs}")

            # Filter FDs for each new relation
            fds_R1 = [(l, r) for (l, r) in fds if set(l + [r]).issubset(R1.columns)]
            fds_R2 = [(l, r) for (l, r) in fds if set(l + [r]).issubset(R2.columns)]

            # Recursively resolve BCNF
            return resolve_bcnf(R1, fds_R1) + resolve_bcnf(R2, fds_R2)

    print("Table is in BCNF.")
    # If table is already in BCNF return original dataframe
    return [df]


def generate_mysql_scripts(tables, table_names):
    """
    This function generates a .sql file which includes proper
    mysql scripts to create and populate tables based on decomposed
    relations and original csv file.
    """
    sql_script = ""

    for df, name in zip(tables, table_names):
        sql_script += f"-- Table: {name}\n"
        sql_script += f"CREATE TABLE {name} (\n"

        col_defs = []
        for col in df.columns:
            dtype = str(df[col].dtype)

            if 'int' in dtype:
                col_defs.append(f"  `{col}` INT")
            elif 'float' in dtype:
                col_defs.append(f"  `{col}` FLOAT")
            elif 'datetime' in dtype:
                col_defs.append(f"  `{col}` DATE")
            else:
                # If no type is not found then VARCHAR is default 
                # and the longest value is used
                # as the maximum length
                max_len = df[col].astype(str).str.len().max()
                max_len = max(255, int(max_len))
                col_defs.append(f"  `{col}` VARCHAR({max_len})")

        sql_script += ",\n".join(col_defs) + "\n);\n\n"

        # INSERT INTO statements
        sql_script += f"-- Inserting into {name}\n"
        for _, row in df.iterrows():
            values = []
            for val in row:
                if pd.isna(val):
                    values.append("NULL")
                elif isinstance(val, str):
                    escaped = val.replace("'", "\\'")
                    values.append(f"'{escaped}'")
                else:
                    values.append(f"{val}")
            sql_script += f"INSERT INTO {name} VALUES ({', '.join(values)});\n"
        sql_script += "\n\n"

    # Return the completed sql scripts
    return sql_script


def connect_and_execute_mysql_script(
    host,
    user,
    password,
    database_name,
    tables,
    table_names
):
    """
    This function connects to mysqlworkbench and executes mysql script
    """
    # Connect to MySQLWorkbench
    mydbase = mysql.connector.connect(
        host=host,
        user=user,
        password=password
    )
    mycursor = mydbase.mycursor()

    # Create new database
    mycursor.execute(f"DROP DATABASE IF EXISTS {database_name}")
    mycursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name};")
    print(f"Database `{database_name}` created or already exists.")

    # Switch to the new database
    mycursor.execute(f"USE {database_name};")

    # Generate SQL code and execute it
    for df, name in zip(tables, table_names):
        print(f"Creating and populating table `{name}`")

        # Create Table
        # dtype_map = {}
        col_defs = []
        for col in df.columns:
            dtype = str(df[col].dtype)
            if 'int' in dtype:
                col_type = "INT"
            elif 'float' in dtype:
                col_type = "FLOAT"
            elif 'datetime' in dtype:
                col_type = "DATE"
            else:
                max_len = df[col].astype(str).str.len().max()
                col_type = f"VARCHAR({max(255, int(max_len))})"
            col_defs.append(f"`{col}` {col_type}")

        create_query = f"CREATE TABLE `{name}` (\n  " + ",\n  ".join(col_defs) + "\n);"
        mycursor.execute(f"DROP TABLE IF EXISTS `{name}`;")
        mycursor.execute(create_query)

        # Insert Data
        for _, row in df.iterrows():
            values = []
            for val in row:
                if pd.isna(val):
                    values.append("NULL")
                elif isinstance(val, str):
                    escaped = val.replace("'", "\\'")
                    values.append(f"'{escaped}'")
                else:
                    values.append(f"{val}")
            insert_query = f"INSERT INTO `{name}` VALUES ({', '.join(values)});"
            mycursor.execute(insert_query)

    # Finalize
    mydbase.commit()
    mycursor.close()
    mydbase.close()
    print(f"All tables created and populated in `{database_name}`.")


def interactive_query_interface(
    host='localhost',
    user='root',
    password='your_password',
    database=''
):
    """
    This function creates a query interface for the user to insert, update, delete
    and create custom queries for further analysis from.
    """
    mydbase = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    mycursor = mydbase.cursor()
    print(f"\nConnected to database `{database}`.\n")

    while True:
        print("Choose an operation:")
        print("1. INSERT")
        print("2. UPDATE")
        print("3. DELETE")
        print("4. CUSTOM QUERY")
        print("Type 'exit' to quit.\n")
        choice = input("Enter option (1-4) or 'exit': ").strip().lower()

        if choice == 'exit':
            break

        try:
            if choice == '1':
                table = input("Table to insert into: ").strip()
                columns = input("Columns (comma-separated): ").strip()
                values = input("Values (comma-separated, quote strings): ").strip()
                query = f"INSERT INTO {table} ({columns}) VALUES ({values});"

            elif choice == '2':
                table = input("Table to update: ").strip()
                set_clause = input("SET clause (e.g., Name = 'Alice'): ").strip()
                where_clause = input("WHERE clause (e.g., ID = '1'): ").strip()
                query = f"UPDATE {table} SET {set_clause} WHERE {where_clause};"

            elif choice == '3':
                table = input("Table to delete from: ").strip()
                where_clause = input("WHERE clause (e.g., ID = '1'): ").strip()
                query = f"DELETE FROM {table} WHERE {where_clause};"

            elif choice == '4':
                query = input("Enter your SQL query: ").strip()
                mycursor.execute(query)
                if query.lower().startswith("select"):
                    rows = mycursor.fetchall()
                    col_names = [desc[0] for desc in mycursor.description]
                    print("\nResults:")
                    print(col_names)
                    for row in rows:
                        print(row)
                    continue

            else:
                print("Invalid option.")
                continue

            mycursor.execute(query)
            mydbase.commit()
            print("Query executed successfully.\n")

        except Exception as err:
            print(f"Error: {err}")

    mycursor.close()
    mydbase.close()


def main():
    file_path = '/Users/ianhill/Desktop/cmps664/python_code/input.txt'
    dataframe = showcase_csv_format(file_path)
    attributes = dataframe.columns
    '''
    # func_deps, primary_keys = get_fds_primarykeys()
    primary_keys = ['OrderID', 'ProductID']

    func_deps = [
        (['CustomerID'], 'CustomerName'),
        (['CustomerID'], 'State'),
        (['CustomerID'], 'City'),
        (['ProductID'], 'ProductName'),
        (['ProductID'], 'Category'),
        (['ProductID'], 'Price'),
        (['OrderID'], 'ShippingMethod'),
        (['OrderID', 'ProductID'], 'Quantity'),
        (['OrderID', 'ProductID'], 'Total')
    ]
    '''
    

    print("Primary Keys: ", primary_keys)
    print("Functional Dependencies: \n", func_deps)
    na = input("\nContinue to computing closure: \n")
    closure = compute_closure(attributes, func_deps)
    print("Dataframe Closure:\n", closure)

    na = input("\nContinue to detect dependencies: \n")
    verify_fds(dataframe, func_deps)
    detect_partial_dependencies(func_deps, primary_keys)
    detect_transitive_dependencies(func_deps, primary_keys)

    na = input("\nContinue to suggest candidate keys: \n")
    suggest_candidate_keys(dataframe, func_deps)

    na = input("\nContinue to check 1NF: \n")
    """Check that table is in 1NF"""
    table_in_1NF = check_1NF(dataframe)

    na = input("\nContinue to check 2NF:")
    """Check for and resolve 2NF"""
    tables_in_2NF = check_2NF(table_in_1NF, func_deps, primary_keys)

    na = input("\nContinue to check 3NF: \n")
    """Checking and resolving 3NF"""
    tables_3NF = []
    for table in tables_in_2NF:
        result = check_3NF(table, func_deps, primary_keys)
        tables_3NF.extend(result)

    na = input("\nContinue to check BCNF: \n")
    """Check and resolving BCNF"""
    tables_BCNF = []
    for table in tables_3NF:
        filtered_fds = [(lhs, rhs) for lhs, rhs in func_deps if set(lhs + [rhs]).issubset(set(table.columns))]
        tables_BCNF.extend(resolve_bcnf(table, filtered_fds))

    na = input("\nContinue to create normalized tables: \n")
    # Generate SQL scripts for generating the tables
    table_names = []
    print("\nHere are you final tables.")
    for table in tables_BCNF:
        print(list(table.columns))
        table_names.append(input("What yould like this table to be called? "))

    sql_code = generate_mysql_scripts(tables_BCNF, table_names)

    with open("normalized_schema.sql", "w") as f:
        f.write(sql_code)

    """SQL mydbase and populate tables"""
    connect_and_execute_mysql_script(
        host='localhost',
        user='root',
        password='Ijh092499!',
        database_name='project_1_db',
        tables=tables_BCNF,
        table_names=table_names
    )
    interactive_query_interface(
        host='localhost',
        user='root',
        password='Ijh092499!',
        database='project_1_db'
    )
    print("\nThank you for using the Database Normalization Tool.")


if __name__ == "__main__":
    main()

import pandas as pd


def showcase_csv_format():
    """
    Asks the user for the file import path
    and displays key information and the format 
    of the csv file.
    """
    file_path = input("Please enter the file name: ")
    # CHANGE TO file_path 
    df = pd.read_csv('/Users/ianhill/Desktop/cmps664/python_code/database_normalization_tool/people-100.csv')

    print("\n-- CSV FILE INFORMATION --")
    print(f"Number of rows: {df.shape[0]}")
    print(f"Number of columns: {df.shape[1]}\n")

    print("-- SAMPLE RECORDS --")
    print(df.head(), "\n")

    print("-- ATTRIBUTE DATA TYPES --")
    print(df.dtypes, "\n")

    return df


def get_fds_primarykeys():
    """
    Asks the user for primary keys and functional dependencies
    of the dataset and returns them.
    """

    fds = input("Please enter the functional dependencies (separated by comma) (A->B,C->D)").split(',')
    primary_keys = input("Please enter the primary keys (separated by comma): ").split(',')

    return fds, primary_keys


def check_1NF(df):
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
    return df


def check_2NF(df):
    


def main():
    dataframe = showcase_csv_format()
    func_deps, primary_keys = get_fds_primarykeys()




if __name__ == "__main__":
    main()
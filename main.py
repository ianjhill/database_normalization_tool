import pandas as pd


def showcase_csv_format():
    """
    Asks the user for the file import path
    and displays key information and the format 
    of the csv file.
    """
    file_path = input("Please enter the file name: ")
    df = pd.read_csv(file_path)

    print("\n-- CSV FILE INFORMATION --")
    print(f"Number of rows: {df.shape[0]}")
    print(f"Number of columns: {df.shape[1]}\n")

    print("-- SAMPLE RECORDS --")
    print(df.head(), "\n")

    print("-- ATTRIBUTE DATA TYPES --")
    print(df.types)

    return df


def get_fds_primarykeys():
    """
    Asks the user for primary keys and functional dependencies
    of the dataset and returns them.
    """

    fds = input("Please enter the functional dependencies (separated by comma) (A->B,C->D)").split(',')
    primary_keys = input("Please enter the primary keys (separated by comma): ").split(',')

    return fds, primary_keys


def main():
    dataframe = showcase_csv_format()
    func_deps, primary_keys = get_fds_primarykeys()




if __name__ == "__main__":
    main()
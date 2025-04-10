# database_normalization_tool
This Python-based project provides a complete pipeline for importing CSV data, identifying functional dependencies, performing normalization, generating SQL scripts, and building an interactive database interface.

# 📊 CSV Normalization and Database Tool

This project is a Python-based tool that guides users through the process of:
- Importing CSV data
- Identifying functional dependencies
- Performing normalization (up to BCNF)
- Generating SQL scripts
- Creating a database and providing an interactive query interface

---

## Features

### Step 1: CSV Data Import
- Prompts the user to enter the CSV file path
- Loads the data into a Pandas DataFrame
- Displays key information:
  - Number of rows and columns
  - Sample records
  - Attribute data types

### Step 2: Functional Dependency Identification
- Allows user input for:
  - Functional Dependencies (FDs)
  - Primary Key(s)
- Performs:
  - Attribute closure computation
  - Detection of partial and transitive dependencies
  - Suggests potential candidate keys

### Step 3: Normalization Process
- Verifies if the dataset satisfies:
  - **1NF** (removes multi-valued attributes)
  - **2NF** (removes partial dependencies)
  - **3NF** (removes transitive dependencies)
  - **BCNF** (ensures all determinants are candidate keys)
- Outputs step-by-step normalization results

### Step 4: SQL Script Generation
- Generates SQL scripts to:
  - Create normalized tables
  - Populate them with data from the CSV

### Step 5: Database Creation and Query Interface
- Supports **SQLite** and **MySQL**
- Connects to a database and runs the generated SQL scripts
- Interactive interface to:
  - Insert, Update, Delete records
  - Run custom SQL queries for analysis

---

## Installation

1. **Clone the repository**
   ```bash
  - git clone https://github.com/your-username/csv-normalization-tool.git
  - cd csv-normalization-tool
2. # Create a virtual environment
  - python -m venv venv

    # Activate it
    # On Windows:
    venv\Scripts\activate

    # On macOS/Linux:
    source venv/bin/activate
3. # Install Required Packages
  - pip install pandas mysql-connector-python
4. # Set Up MySQL SERVER
  - Make sure MySQL server is installed and running
  You'll need 
  - MySQL username (e.g. root)
  - MySQL password
  - MySQL host (localhost)
5. # Prepare CSV File
  - Place csv file in project folder
6. # Run tool to perform database normalization
  - python main.py
  This will:
  This will:

  - Prompt for the CSV file path
  - Ask for functional dependencies and primary key
  - Normalize the data to 2NF, 3NF, and BCNF
  - Create the database and tables in MySQL
  - Launch an interactive SQL query interface
7. # Review tables populated in MySQL server to determine whether tool was succesful

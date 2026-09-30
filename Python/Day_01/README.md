# Day 1 — Python Data Analysis

## Project
Nassau Candy Distributor

## Objective
To inspect, understand, and profile the dataset before performing detailed data analysis.

## Work Completed

### 1. Data Loading
- Loaded the Nassau Candy Distributor CSV file using Pandas.
- Displayed the first few records using `df.head()`.

### 2. Dataset Structure
- Checked the number of rows and columns using `df.shape`.
- Dataset contains **10,194 rows and 18 columns**.

### 3. Data Information
- Used `df.info()` to inspect column names, non-null counts, and data types.
- Identified integer and text columns.

### 4. Missing Values
- Checked missing values using Pandas.
- No missing values were identified in the dataset.

### 5. Duplicate Records
- Checked duplicate rows using `df.duplicated().sum()`.
- No duplicate records were identified.

### 6. Unique Values
- Checked unique values for important columns such as:
  - Order ID
  - Product Name
  - State/Province
  - City
  - Customer ID

### 7. Date Inspection
- Converted Order Date and Ship Date into datetime format.
- Checked the minimum and maximum dates.

### 8. Numerical Summary
- Generated descriptive statistics for:
  - Sales
  - Units
  - Gross Profit
  - Cost

## Libraries Used
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn

## File
`Nassau_Candy_Distributor_Day_01.ipynb`

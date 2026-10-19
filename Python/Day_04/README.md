# Day 4 — Exploratory Data Analysis (EDA)

## Project
**Nassau Candy Distributor — Shipping Route Efficiency Analysis**

## Objective
Perform Exploratory Data Analysis (EDA) using Python, Pandas, NumPy, Matplotlib, and Seaborn where appropriate. Summarize business performance and explore sales patterns across shipping modes, regions, and product divisions.

## Tasks Completed
- Loaded the raw CSV dataset into a Pandas DataFrame.
- Inspected dataset shape, column names, data types, and missing values.
- Created a business KPI summary.
- Aggregated records, distinct orders, sales, units, gross profit, and cost by shipping mode.
- Analyzed sales and other measures by region.
- Analyzed sales and other measures by product division.
- Created bar charts to visualize sales distributions.

## Key Python Concepts
- `pandas.read_csv()`
- `DataFrame.shape`
- `DataFrame.dtypes`
- `isna().sum()`
- `groupby()` and `agg()`
- `nunique()` and `sum()`
- `sort_values()`
- Matplotlib plotting

## Data Quality and Validation
The original dataset is retained without intentional record deletion in this EDA workflow. Repeated Order IDs are not automatically treated as duplicate records.

Sales totals and grouped totals should be reconciled before drawing conclusions. Date-related shipping performance requires separate validation before calculating or interpreting shipping lead times.

## Business Questions
1. How are sales distributed across shipping modes?
2. Which regions contribute the most sales?
3. Which product divisions contribute the most sales?
4. How do gross profit and cost vary across these categories?
5. What additional data-quality checks are required before evaluating shipping efficiency?

## Limitations
This analysis is descriptive and does not establish causation. Conclusions depend on the actual dataset, the definitions of its measures, and the validation of its dates and identifiers. Numerical findings and recommendations should be added only after reviewing the executed outputs.

## Files
- `04_eda.ipynb` — Exploratory Data Analysis notebook
- `README.md` — Documentation for Day 4

## Tools
Python, Pandas, NumPy, Matplotlib, Seaborn, Jupyter Notebook

## Status
In progress — complete the analysis, validate grouped totals, review charts, and document verified findings before marking this day complete.

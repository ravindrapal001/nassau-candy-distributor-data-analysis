# Day 5 — Geographic Route Analysis Using Python

## Project
**Nassau Candy Distributor — Shipping Route Efficiency Analysis**

## Objective
Analyze geographic groups using Python and Pandas to understand sales distribution, order volume, and gross profit across regions and states or provinces.

## Tasks
- Loaded the Nassau Candy Distributor dataset.
- Grouped records by geographic attributes.
- Calculated record counts and distinct order counts.
- Aggregated sales, units, and gross profit.
- Sorted geographic groups by record volume and sales.
- Identified the top 10 geographic groups by sales.
- Created a horizontal bar chart to visualize sales distribution.

## Python Concepts Used
- Pandas DataFrames
- `groupby()`
- `agg()`
- `nunique()`
- `sort_values()`
- `head()`
- Matplotlib bar charts
- DataFrame column selection

## Business Questions
1. Which geographic groups have the highest sales?
2. Which geographic groups contain the most records?
3. How does gross profit vary across geographic groups?
4. Which groups warrant further investigation?

## Data Quality and Validation
- Verify the geographic grouping columns before interpreting results.
- Distinguish record counts from distinct order counts.
- Reconcile grouped sales and gross profit against dataset totals.
- Investigate missing geographic identifiers.
- Validate Order Date and Ship Date before calculating shipping lead times or evaluating route efficiency.

## Limitations
Geographic groups are not necessarily individual delivery routes. High sales or high record volume does not automatically indicate better shipping efficiency. Delivery performance conclusions require validated dates and appropriate shipment-level information.

## Files
- `Day_05_Route_Analysis.ipynb` — Python route and geographic analysis notebook
- `README.md` — Project documentation

## Tools
Python, Pandas, NumPy, Matplotlib, Jupyter Notebook

## Status
In progress — validate geographic mappings, reconcile aggregated metrics, review charts, and document verified findings before completing the analysis.

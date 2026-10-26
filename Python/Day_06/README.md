# Day 06 — Route Efficiency Benchmarking

## Project
**Nassau Candy Distributor — Shipping Route Efficiency Analysis**

## Objective
Analyze shipping lead times and compare geographic groups to identify areas with shorter or longer observed delivery times using Python, Pandas, and data analysis techniques.

## Analysis Performed
- Validated order dates and ship dates.
- Calculated shipping lead time in days.
- Identified invalid dates and negative lead times.
- Grouped records by City and State/Province.
- Calculated record counts and distinct orders.
- Measured mean and median shipping lead times.
- Calculated lead-time standard deviation and 90th-percentile lead time.
- Summarized sales and gross profit by geographic group.
- Identified the 10 groups with the shortest and longest median lead times.

## Tools and Technologies
- Python
- Pandas
- NumPy
- Matplotlib
- Jupyter Notebook

## Output Files
The analysis generates the following CSV reports:

- `geographic_group_efficiency_metrics.csv`
- `top_10_fastest_geographic_groups.csv`
- `top_10_slowest_geographic_groups.csv`

These reports are saved in `outputs/day_06/`.

## Important Data Limitation
The original dataset does not contain a Factory column. Therefore, this analysis uses City and State/Province to define geographic groups. These groups should not be interpreted as actual factory-to-customer transportation routes.

## Key Deliverable
A reproducible Python analysis that compares shipping lead-time performance across geographic groups and supports further investigation of distribution efficiency.

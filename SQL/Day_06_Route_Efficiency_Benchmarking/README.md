# Day 6 — Route Efficiency Benchmarking Using SQL

## Project
**Nassau Candy Distributor — Shipping Route Efficiency Analysis**

## 1. Objective

Analyze shipping lead times across different geographic areas and shipping modes using Microsoft SQL Server.

The objective is to identify geographic and shipping-mode combinations with shorter or longer average order-to-ship intervals and compare their business performance.

## 2. Database and Tools

- Database: `nassau_candy`
- SQL Platform: Microsoft SQL Server
- Query Environment: SQL Server Management Studio (SSMS)
- SQL Dialect: T-SQL
- Source Table: `dbo.nassau_candy`

## 3. Analysis Performed

### A. Eligible Record Identification
Selected records containing:
- Valid State/Province
- Valid Ship Mode
- Available Order Date
- Available Ship Date
- Ship Date greater than or equal to Order Date

### B. Shipping Lead-Time Calculation

Calculated the order-to-ship interval using:

`DATEDIFF(DAY, [Order Date], [Ship Date])`

This measures the number of calendar-day boundaries between order and shipment dates.

### C. Geographic and Shipping-Mode Analysis

Grouped records using:
- State/Province
- Ship Mode

Calculated:
- Record Count
- Distinct Orders
- Average Shipping Lead Time
- Total Sales
- Total Gross Profit

### D. Shipping Performance Ranking

Applied SQL window functions:

- `DENSE_RANK()` ascending to identify groups with shorter average lead times.
- `DENSE_RANK()` descending to identify groups with longer average lead times.

### E. Business Performance Comparison

Compared average lead times with sales, gross profit, and order volume to support further business analysis.

## 4. SQL Concepts Used

- Common Table Expressions (CTEs)
- `WITH`
- `DATEDIFF()`
- `COUNT(*)`
- `COUNT(DISTINCT)`
- `AVG()`
- `SUM()`
- `GROUP BY`
- `DENSE_RANK() OVER()`
- `ORDER BY`
- NULL handling
- Conditional record filtering

## 5. Business Questions

1. Which state and shipping-mode combinations have the shortest average order-to-ship intervals?
2. Which combinations have the longest average intervals?
3. How many records and distinct orders are associated with each group?
4. How do sales and gross profit vary across geographic-shipping groups?
5. Are there unusual lead-time values requiring further investigation?

## 6. Data Quality Considerations

- Factory was excluded because the source dataset does not contain a Factory column.
- State/Province and Ship Mode are used as grouping dimensions.
- Missing dates are excluded from the lead-time calculation.
- Negative lead times are excluded from the eligible analysis but should be investigated separately.
- Original source dates are preserved.
- `DATEDIFF(DAY)` measures calendar-day boundaries, not exact elapsed 24-hour periods.
- The analysis measures order-to-ship time, not actual transportation or delivery time.

## 7. Validation Status

Pending execution and verification of the complete Day 6 analytical queries in SSMS.

Record the actual output, row counts, lead-time statistics, and ranking results after execution.

Cross-validate important results with Excel and Python before reporting final findings.

## 8. Deliverables

- SQL script for geographic shipping analysis.
- Shipping lead-time calculations.
- Fastest and slowest group rankings.
- SSMS execution screenshots.
- Validation results and documented limitations.

## 9. Conclusion

This analysis establishes a SQL-based framework for comparing order-to-ship intervals across geographic areas and shipping modes.

The results can support further investigation of shipping operations and can be integrated into the broader Excel, Python, Power BI, and Streamlit project after validation.

## GitHub Repository

https://github.com/ravindrapal001/nassau-candy-distributor-data-analysis

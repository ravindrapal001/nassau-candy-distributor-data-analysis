# Day 5 — Route-Level Business Analysis Using SQL

## Project
**Nassau Candy Distributor — Shipping Route Efficiency Analysis**

## Objective
Analyze sales, order volume, units, gross profit, cost, and gross profit margin across geographic groups using Microsoft SQL Server and T-SQL.

The analysis groups records by Region and State/Province to identify high-volume and high-sales geographic areas. These summaries support further investigation of distribution patterns, but do not independently establish physical shipping routes or delivery efficiency.

## Database and Environment
- Database: `nassau_candy`
- SQL dialect: Microsoft SQL Server (T-SQL)
- Tool: SQL Server Management Studio (SSMS)
- Source table used in the current script: `nassau_candy`

Confirm the actual schema and table name before executing the script in another environment.

## Analysis Performed

### 1. Geographic Group Summary
Groups records by Region and State/Province and calculates:
- Record count
- Distinct order count
- Total sales
- Total units
- Total gross profit
- Total cost
- Gross profit margin percentage

### 2. Top 10 Geographic Groups by Record Volume
Identifies the ten geographic groups with the highest number of records.

**Note:** Record volume is not the same as shipment volume or number of unique orders.

### 3. Geographic Ranking by Sales
Uses a Common Table Expression (CTE) and `DENSE_RANK()` to rank geographic groups by total sales.

`DENSE_RANK()` assigns the same rank to groups with equal sales and does not leave gaps in subsequent ranks.

### 4. Financial Reconciliation
Calculates overall record count, sales, units, gross profit, and cost to provide baseline totals for validation.

## SQL Concepts
- `GROUP BY`
- `COUNT(*)`
- `COUNT(DISTINCT ...)`
- `SUM()`
- `CAST()` and `NULLIF()`
- `TOP`
- Common Table Expressions (CTEs)
- `DENSE_RANK() OVER()`
- `ORDER BY`
- Aggregate reconciliation

## Validation Results

The SQL script was executed successfully in SSMS according to the captured screenshot.

The displayed reconciliation output reported:

| Metric | Observed value |
|---|---:|
| Total records | 10,194 |
| Total sales | 141,783.630503654 |
| Total units | 38,654 |
| Total gross profit | 93,442.7995981574 |
| Total cost | 48,340.829965651 |

These values should be reconciled with the corresponding Excel and Python results before being treated as final validated project metrics.

## Data-Quality Considerations
- Repeated Order IDs may represent multiple product lines rather than duplicate records.
- A Region and State/Province combination is a geographic grouping, not necessarily a validated transportation route.
- Confirm the definitions of Sales, Cost, and Gross Profit before interpreting profitability.
- Validate Order Date and Ship Date before calculating shipping lead time or delivery delays.
- Preserve source records and document unresolved discrepancies.

## Deliverables
- SQL script containing geographic summaries, rankings, and reconciliation queries.
- SSMS execution screenshots.
- Documentation of assumptions and validation results.

## Conclusion
This analysis establishes a SQL-based foundation for geographic and commercial performance reporting. The findings can be incorporated into the broader Excel, Python, and Power BI project after cross-tool validation.

## Repository
https://github.com/ravindrapal001/nassau-candy-distributor-data-analysis

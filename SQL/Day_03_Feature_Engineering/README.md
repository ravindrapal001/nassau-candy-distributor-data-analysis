# Day 03 — SQL Feature Engineering

## Project
**Factory-to-Customer Shipping Route Efficiency Analysis — Nassau Candy Distributor**

## Objective
The objective of Day 3 is to create and validate useful analytical features using SQL Server. These features will support shipping lead-time analysis, order trends, destination analysis, and route-efficiency reporting.

## Tools Used
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL
- GitHub

## Tasks

### 1. Inspect the Dataset
- Verify the table structure and column names.
- Check data types for Order Date, Ship Date, Sales, Units, Gross Profit, and Cost.
- Confirm that Row ID and Order ID are retained.

### 2. Validate Date Fields
- Identify missing or invalid dates.
- Inspect minimum and maximum Order Date and Ship Date.
- Investigate records where Ship Date occurs before Order Date.

### 3. Create Shipping Lead Time
Calculate the number of days between Order Date and Ship Date.

```sql
SELECT
    [Row ID],
    [Order ID],
    [Order Date],
    [Ship Date],
    DATEDIFF(DAY, [Order Date], [Ship Date]) AS Preliminary_Lead_Time
FROM dbo.NassauCandy;
```

Replace `dbo.NassauCandy` with the actual table name in your SQL Server database.

### 4. Create Calendar Features
Extract Year, Quarter, Month, and Day from Order Date for trend analysis.

```sql
SELECT
    [Order ID],
    [Order Date],
    YEAR([Order Date]) AS Order_Year,
    DATEPART(QUARTER, [Order Date]) AS Order_Quarter,
    MONTH([Order Date]) AS Order_Month,
    DAY([Order Date]) AS Order_Day
FROM dbo.NassauCandy;
```

### 5. Investigate Route Information
- Inspect available country, region, city, and state columns.
- Verify factory-to-product mapping using the project-provided source, if available.
- Do not assume that a destination identifier represents a verified factory-to-customer route.

### 6. Validate Financial Totals
Compare record counts and aggregate Sales, Units, Gross Profit, and Cost with the original dataset.

### 7. Document Data Quality
Record missing values, date inconsistencies, duplicate identifiers, and unresolved factory mappings.

## Expected Deliverables
- SQL queries for date validation.
- Preliminary shipping lead-time calculation.
- Calendar feature extraction.
- Route and factory mapping investigation.
- Validation of business metrics.
- Documented findings and unresolved data-quality issues.

## Important Notes
The lead-time field is preliminary until date interpretation and data quality have been verified. Factory-level route analysis must use an authoritative factory-to-product mapping.

The original raw CSV must remain unchanged.

## Next Steps
- Validate engineered features against Python and Excel.
- Investigate unusual shipping dates and lead times.
- Develop SQL aggregations for shipping and business performance.
- Use validated results in Power BI dashboards.

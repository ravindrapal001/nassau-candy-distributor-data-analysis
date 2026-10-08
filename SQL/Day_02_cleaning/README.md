# Day 02 — SQL Data Profiling & Cleaning Investigation

## Objective

The objective of Day 02 is to profile the Nassau Candy dataset, identify potential data-quality issues, and investigate the data before applying any destructive cleaning operations.

## SQL File

`02_cleaning.sql`

## Tasks Performed

### 1. Basic Data Profiling
- Checked total number of records.
- Checked the number of columns.
- Inspected column names, data types, and nullability.

### 2. Missing Value Analysis
Checked for NULL values in important columns, including:
- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Product ID
- Product Name
- Sales
- Units
- Gross Profit
- Cost

### 3. Duplicate Investigation
Investigated duplicate records using a combination of:

- Order ID
- Product ID
- Order Date
- Ship Date

Repeated Order IDs were **not automatically treated as duplicate records**, because one order can contain multiple products.

### 4. Date Investigation
Checked:
- Minimum Order Date
- Maximum Order Date
- Minimum Ship Date
- Maximum Ship Date

### 5. Shipping Lead-Time Investigation

Calculated preliminary shipping lead time using:

`Ship Date − Order Date`

For SQL Server, `DATEDIFF(DAY, Order_Date, Ship_Date)` was used.

### 6. Date Anomaly Checks
Investigated:
- Negative lead times
- Same-day shipments
- Extremely large shipping delays

### 7. Numerical Data Profiling
Reviewed:
- Sales
- Units
- Gross Profit
- Cost

Checked minimum, maximum, and average values.

### 8. Negative Value Checks
Checked for negative values in:
- Sales
- Units
- Cost

### 9. Categorical Data Profiling
Reviewed the distribution of:
- Ship Mode
- Region
- Division

## Important Data Quality Principle

Repeated Order IDs do not necessarily represent duplicate records.

An order may contain multiple product lines. Therefore, duplicate investigation is performed using multiple fields instead of deleting rows based only on Order ID.

## Day 02 Outcome

The purpose of this stage is **investigation rather than immediate deletion or modification of records**.

The findings from Day 02 will be used to make evidence-based cleaning and transformation decisions in the subsequent stages of the project.

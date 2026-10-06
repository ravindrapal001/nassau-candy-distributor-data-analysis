# Day 02 — Data Quality Validation

## Project
**Factory-to-Customer Shipping Route Efficiency Analysis for Nassau Candy Distributor**

## Objective

The objective of Day 02 is to perform systematic data-quality validation on the Nassau Candy Distributor dataset before starting detailed analysis.

## Tasks Completed

### 1. Missing Value Validation
Checked important columns for missing values, including:

- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Country/Region
- City
- State/Province
- Postal Code
- Division
- Region
- Product ID
- Product Name
- Sales
- Units
- Gross Profit
- Cost

**Result:** No missing values were identified in the checked columns.

### 2. Date Validation

Validated the relationship between:

- Order Date
- Ship Date

Calculated shipping lead time using:

```text
Lead Time = Ship Date − Order Date
```

Also checked for cases where the Ship Date occurs before the Order Date.

### 3. Duplicate Validation

Checked potential duplicate records using the combination of:

```text
Order ID + Product ID
```

This is more appropriate than checking Order ID alone because one order can contain multiple products.

### 4. Category Validation

Checked categorical fields for missing or invalid values, including:

- Ship Mode
- Country/Region
- Division
- Region

### 5. Numeric Validation

Validated numerical fields:

- Sales
- Units
- Gross Profit
- Cost

Checked for:

- Non-numeric values
- Negative values

### 6. Validation Summary

Created a centralized validation summary containing:

- Missing Value Issues
- Duplicate Record Issues
- Date Errors
- Category Issues
- Numeric Issues
- Overall Data Quality Status

## Key Learning

A major data-quality lesson from Day 02 was that a repeated **Order ID does not necessarily represent a duplicate record**. Since one order can contain multiple products, duplicate validation should consider the appropriate business key, such as:

**Order ID + Product ID**

## Tools Used

- Microsoft Excel
- Excel Formulas
- Data Validation
- Data Quality Checks

## Status

**Day 02 — Completed**

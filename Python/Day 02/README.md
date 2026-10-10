# Day 02 — Data Cleaning and Validation

## Project
**Factory-to-Customer Shipping Route Efficiency Analysis — Nassau Candy Distributor**

## Objective
The objective of Day 02 is to validate data quality, investigate date inconsistencies, identify duplicate records, and prepare the dataset for reliable analysis.

## Dataset Overview
- **Total records:** 10,194
- **Tools:** Python, Pandas, NumPy
- **Notebook:** `Day_02_cleaning.ipynb`

## Tasks Completed

### 1. Data Quality Checks
- Checked missing values.
- Inspected duplicate records.
- Examined column data types.
- Validated financial and categorical fields.

### 2. Date Conversion and Validation
- Converted `Order Date` and `Ship Date` into datetime format.
- Checked invalid dates.
- Calculated preliminary shipping lead time.
- Investigated the relationship between order dates and shipping dates.

### 3. Date Anomaly Identified
The initial analysis revealed unusually large shipping lead times.

| Metric | Result |
|---|---:|
| Minimum lead time | 904 days |
| Median lead time | 1,274 days |
| Mean lead time | 1,320.84 days |
| Maximum lead time | 1,642 days |
| Records with ship date before order date | 0 |
| Same-day shipments | 0 |

The order dates range from January 2024 to December 2025, while the ship dates range from June 2026 to June 2030.

These results indicate a potential data-quality issue that requires further investigation before calculating final shipping-efficiency metrics.

### 4. Investigation Approach
- Compared the year-like segment in `Order ID` with the actual order-date year.
- Inspected records with the largest lead times.
- Examined the distribution of shipping lead times.
- Avoided making unsupported date corrections.

## Important Note
The original date values must be verified before applying any correction. The year embedded in an order ID is not sufficient evidence to determine the correct order date.

## Day 02 Status
**Status:** Date anomaly identified; investigation ongoing.

## Next Steps
1. Determine the source of the date inconsistency.
2. Establish a defensible correction rule, if the original data supports one.
3. Revalidate the corrected dates.
4. Recalculate shipping lead times.
5. Document the final cleaning decisions and their impact on the analysis.

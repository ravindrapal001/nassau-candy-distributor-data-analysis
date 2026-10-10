# Day 02 — Data Quality Analysis Using Power BI

## Project Overview

This project focuses on assessing data quality in the Nassau Candy Distributor dataset. The objective is to validate data types, investigate duplicate records, examine date consistency, and create a Power BI Data Quality dashboard.

## Objectives

- Validate column data types.
- Investigate duplicate records and repeated Order IDs.
- Examine Order Date and Ship Date ranges.
- Calculate preliminary shipping lead time.
- Identify potentially inconsistent date values.
- Build a Power BI dashboard to summarize data quality.

## Tools and Technologies

- **Power BI Desktop** — Dashboard development and reporting
- **Power Query** — Data transformation and validation
- **DAX** — KPI calculations and data-quality measures
- **Python (Pandas)** — Additional date validation and exploratory checks
- **GitHub** — Project documentation and version control

## Data Quality Checks

### 1. Column Data Types

Reviewed the expected data types for identifiers, dates, and numerical business measures.

### 2. Duplicate Investigation

Investigated repeated Order IDs and records to distinguish legitimate multiple-product order lines from potential duplicate records.

### 3. Date Validation

Examined minimum and maximum order dates and shipping dates to identify unusual date ranges and investigate possible inconsistencies.

### 4. Preliminary Lead-Time Analysis

Created a temporary lead-time field:

`Preliminary Lead Time = Ship Date - Order Date`

The field is used for investigation and validation. It should not be treated as a final business metric until unusual date values have been reviewed.

## Power BI Dashboard

The Data Quality page includes KPI cards and a record-level table.

**Key dashboard elements:**
- Total Rows
- Distinct Orders
- Missing Values
- Duplicate Rows
- Minimum Order Date
- Maximum Order Date
- Minimum Ship Date
- Maximum Ship Date
- Preliminary Lead Time investigation table

## Key Observations

- The dataset contains approximately 10,194 records.
- Approximately 8,549 distinct Order IDs are displayed in the dashboard.
- The preliminary lead-time calculations reveal unusually large intervals that require further investigation.
- The dashboard provides a starting point for identifying and reviewing data-quality issues.

*Note: These observations are preliminary. Missing-value counts, duplicate counts, and date anomalies should be verified before final conclusions are reported.*

## Deliverables

- Power BI Data Quality dashboard
- Data validation and investigation workflow
- Supporting Python analysis
- Project documentation

## Next Steps

1. Validate the missing-value and duplicate-count measures.
2. Investigate inconsistent Order ID and Order Date year patterns.
3. Verify unusual shipping dates against the original dataset.
4. Establish a reliable lead-time calculation.
5. Update the dashboard after validating the findings.

## Conclusion

This phase establishes a structured data-quality review process for the Nassau Candy Distributor analysis. The findings will support more reliable exploratory data analysis and subsequent shipping-efficiency analysis.

**Project:** Nassau Candy Distributor Data Analysis  
**Phase:** Day 02 — Data Quality Analysis  
**Author:** Ravindra Pal

# Day 3: Feature Engineering and Data Validation

## Project Overview
This folder contains the Day 3 Excel work for the **Nassau Candy Distributor — Shipping Route Efficiency Analysis** project.

## Objectives
- Validate the original dataset and working data.
- Verify Row IDs, Order IDs, factory mappings, and route identifiers.
- Validate Order Date and Ship Date fields.
- Create calendar features such as Year, Quarter, Month, and Day.
- Reconcile Sales, Units, Gross Profit, Cost, and total row counts.

## Validation Checks
The Excel workbook includes the following validation sheets:

- `Initial_File`: Original dataset used as the reference.
- `Feature_Validation`: Tracks validation status and comments.
- `Day3_Checks`: Records data-quality metrics, including row count, distinct orders, missing Row IDs, and duplicate Row ID records.

## Data Quality
The initial checks recorded 10,194 data rows, 8,549 distinct orders, zero missing Row IDs, and zero duplicate Row ID records. These results should be interpreted in the context of the validation formulas and the original dataset.

Date anomalies, mapping inconsistencies, and differences in numerical totals must be investigated and documented before the validation process is marked complete.

## Expected Deliverables
- Excel workbook with validation results.
- Verified calendar features.
- Documented data-quality issues and findings.

## Tools Used
Microsoft Excel

## Next Steps
Use the validated data for further exploratory data analysis, shipping lead-time analysis, route efficiency evaluation, and business reporting using SQL, Python, and Power BI.

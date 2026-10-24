# Day 5 — Excel Route Summary and Validation

## Project Overview

**Project:** Nassau Candy Distributor — Shipping Route Efficiency Analysis

**Tool:** Microsoft Excel

**Objective:** Analyze geographic business performance, record and order volumes, sales, units, gross profit, and cost using PivotTables and charts. Validate analytical results against the source dataset.

## Workbook Structure

The Excel workbook is planned to contain the following worksheets:

1. `Raw_Data` — preserved source dataset.
2. `Route_Summary` — geographic and route-related summaries.
3. `Volume_Analysis` — record and order volume analysis.
4. `Sales_Analysis` — sales, units, cost, and gross profit analysis.
5. `Validation` — source-to-PivotTable reconciliation and data-quality checks.

## 1. Geographic Business Summary

**PivotTable fields**

- Rows: Region
- Rows: State/Province
- Values: Count of Row ID
- Values: Distinct Count of Order ID, when supported
- Values: Sum of Sales
- Values: Sum of Units
- Values: Sum of Gross Profit
- Values: Sum of Cost

The summary will help compare business activity across regions and states.

## 2. Volume Analysis

Analyze record counts and distinct order counts by geographic group.

Record count and distinct order count are different measures. A single order may contain multiple product records, so repeated Order IDs must not automatically be treated as duplicate records.

## 3. Sales Analysis

Summarize Sales, Units, Gross Profit, and Cost by region and state.

Create appropriate charts to compare geographic performance. Use consistent number formats, clear chart titles, and appropriate sorting.

## 4. Validation

Compare the source dataset totals with the corresponding PivotTable Grand Totals for:

- Record count
- Sales
- Units
- Gross Profit
- Cost
- Distinct Order IDs

Document discrepancies and investigate missing values, incorrect aggregation, filters, and data-type issues.

A validation check must not be marked as passed until the comparison has been performed.

## 5. Route Analysis and Data Limitations

The actual route identifier and its business meaning must be verified from the source dataset before performing route-level comparisons.

Order Date and Ship Date must be validated before calculating shipping lead time. Suspicious dates must be investigated without guessing replacements.

No unsupported delivery-delay classification or route-efficiency claim will be made.

## Deliverables

- Excel workbook with the required worksheets.
- PivotTables and relevant charts.
- Validation results and evidence.
- Documentation of unresolved data-quality issues.
- Reproducible analysis suitable for a Data Analyst portfolio.

## Results and Status

**Status:** In progress.

Actual totals, verified findings, charts, and validation outcomes will be documented after the Excel analysis has been completed and checked.

## Conclusion

This analysis aims to produce a transparent, reproducible summary of geographic business performance and shipping-related data. Business recommendations will be based on verified evidence rather than assumptions.

# Day 3 — Power BI Feature Engineering and Data Modeling

## Project Overview

**Project:** Nassau Candy Distributor — Shipping Route Efficiency Analysis

**Tool:** Microsoft Power BI Desktop

**Objective:** Develop a reliable data model for analyzing sales, products, customers, geography, and shipping performance.

## Day 3 Objectives

- Inspect the existing Power BI dataset and column structure.
- Determine the grain of the main table.
- Validate customer and product identifiers.
- Investigate duplicate dimension keys.
- Establish appropriate relationships between fact and dimension tables.
- Investigate Order Date and Ship Date data-quality issues.
- Prepare a reliable foundation for exploratory data analysis.

## Data Model

The existing main table is `nassau_candy`.

The intended model may include:

- `DimCustomer` — customer information, subject to key and attribute validation.
- `DimProduct` — product information, subject to uniqueness and mapping validation.
- `DimDate` — to be created only after date interpretation has been verified.

The final fact-table grain and relationship structure must be confirmed against the actual dataset.

## Relationship Validation

### Customer Relationship

The relationship between `DimCustomer[Customer ID]` and `nassau_candy[Customer ID]` requires investigation because a duplicate-key error was reported for Customer ID `112326`.

The dimension key must be unique before establishing a one-to-many relationship.

**Status:** Pending investigation and validation.

### Product Relationship

The existing relationship uses `DimProduct[Product ID]` on the one side and `nassau_candy[Product ID]` on the many side.

Product-key uniqueness and consistency must be verified before the relationship is considered validated.

**Status:** Validation pending.

## Date Data-Quality Considerations

The project previously showed potentially inconsistent date ranges between Order Date and Ship Date.

Before calculating shipping lead time, the source values, column data types, locale, and business meaning must be investigated.

No unverified date corrections or unsupported delivery-delay classifications should be applied.

## Validation Checklist

- [ ] Confirm the grain of the main table.
- [ ] Validate Customer ID uniqueness and investigate ID `112326`.
- [ ] Validate Product ID uniqueness and product mappings.
- [ ] Check unmatched customer and product identifiers.
- [ ] Verify relationship cardinality and filter direction.
- [ ] Investigate Order Date and Ship Date anomalies.
- [ ] Compare important totals with Excel, SQL Server, and Python.
- [ ] Save the validated Day 3 Power BI checkpoint.

## Current Status

The data-model validation work is in progress. Customer relationship validation, product-key validation, and date-quality investigation must be completed or documented as unresolved before the model is treated as final.

## Next Steps

Resolve the Customer ID duplicate-key issue, validate the Product dimension, inspect relationship behavior, and document all unresolved data-quality issues.

## Repository

GitHub: https://github.com/ravindrapal001/nassau-candy-distributor-data-analysis

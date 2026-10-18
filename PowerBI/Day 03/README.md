# Day 03 — Power BI Data Modeling and Relationship Validation

## 1. Project Overview

**Project:** Nassau Candy Distributor — Shipping Route Efficiency Analysis

**Tool:** Microsoft Power BI Desktop

**Objective:** Develop a reliable data model by validating table relationships, identifying the correct grain of the dataset, and preparing the data for further analysis.

## 2. Tasks Completed or Under Validation

- Reviewed the existing `nassau_candy` dataset.
- Inspected the available data fields and table structure.
- Reviewed the `DimCustomer` and `DimProduct` tables.
- Inspected relationships between dimension tables and the main dataset.
- Investigated relationship cardinality and cross-filter direction.
- Identified the need to validate unique keys before creating one-to-many relationships.
- Reviewed the date fields and preliminary shipping lead-time calculations.

**Important:** Mark a task as completed only after verifying it in Power BI. Record unfinished tasks as pending.

## 3. Data Model Design

The intended model follows a star-schema approach where appropriate.

### Main dataset
`nassau_candy`

Contains the order and product records and measures such as Sales, Units, Cost, and Gross Profit.

### Customer dimension
`DimCustomer`

Intended to contain unique customer identifiers and relevant customer or geography attributes.

### Product dimension
`DimProduct`

Intended to contain unique product identifiers and relevant product attributes.

### Date dimension
`DimDate`

To be created or connected after validating the date fields and their interpretation.

The final model structure depends on verified identifiers, row grain, and available columns.

## 4. Relationship Validation

Before creating relationships, verify that the key on the dimension side contains no duplicates or unintended blank values.

Expected relationships, where supported by the data:

- `DimCustomer[Customer ID]` → `nassau_candy[Customer ID]`
- `DimProduct[Product ID]` → `nassau_candy[Product ID]`
- `DimDate[Date]` → the appropriate validated date column in the main dataset

Preferred configuration:

- Cardinality: One-to-many (1:*)
- Cross-filter direction: Single, from dimension to fact table
- Relationship status: Active where appropriate

Do not create a relationship until its key uniqueness and business meaning have been verified.

## 5. Data Quality and Validation

The following checks must be verified against the actual dataset:

- Total row count.
- Distinct order count.
- Missing and duplicate identifiers.
- Unique customer and product keys.
- Unmatched customer and product identifiers.
- Sales, Units, Cost, and Gross Profit totals.
- Order Date and Ship Date validity.
- Calendar feature consistency.
- Relationship cardinality and filter behavior.

## 6. Date and Shipping Lead-Time Warning

The project has shown potentially unusual Order Date and Ship Date ranges. These values must be checked against the original source data before drawing shipping-performance conclusions.

Do not create a Delay Flag or classify routes as inefficient until the dates and business rules have been validated.

## 7. Issues and Next Steps

- Confirm the correct grain of each row.
- Resolve any duplicate-key errors in dimension tables.
- Validate relationship cardinality.
- Use single-direction filtering unless the model requires another configuration.
- Create a proper date dimension after date validation.
- Reconcile important measures against Excel and SQL Server.
- Document any unresolved data-quality issues.

## 8. Deliverable

A validated Power BI data model that can support reliable business analysis and later dashboard development.

**Status:** In progress — update this status after completing and verifying the tasks.

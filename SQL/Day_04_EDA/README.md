# Day 4 — SQL Business Analysis and EDA

## Project
Nassau Candy Distributor — Shipping Route Efficiency Analysis

## Objective
Analyze sales, order volume, units, cost, and gross profit across shipping modes, regions, divisions, and states using Microsoft SQL Server.

## Queries Included
1. Ship Mode Business Summary
2. Regional Performance Analysis
3. Division Performance Analysis
4. Top 10 States by Sales
5. Financial Relationship and Consistency Check
6. Missing-Value Validation
7. Shipping-Category Validation

## SQL Concepts
- SELECT and aggregate functions
- GROUP BY and ORDER BY
- COUNT(DISTINCT)
- SUM and AVG
- TOP
- CASE WHEN
- CAST and NULLIF
- Data-quality validation

## Validation Status
Pending execution and verification in SQL Server Management Studio (SSMS).

## Important Data-Quality Note
The financial relationship between Sales, Cost, and Gross Profit must be confirmed against the source data definitions. Order Date and Ship Date must also be validated before calculating shipping lead time or making delivery-efficiency claims.

## Next Steps
- Execute all queries in SSMS.
- Verify table and column names.
- Reconcile aggregate totals with the source dataset.
- Document actual results and unresolved issues.

# Power BI — Day 01: Data Profiling & Initial Validation

## Project

Nassau Candy Distributor Data Analysis

## Objective

The objective of Day 01 is to inspect, profile, and validate the Nassau Candy Distributor dataset in Power BI before performing advanced data cleaning, modeling, DAX analysis, or final dashboard development.

## Dataset

* **File:** `nassau_candy.csv`
* **Rows:** 10,194
* **Columns:** 18

## Day 01 Activities

### 1. Data Import

* Imported `nassau_candy.csv` into Power BI.
* Loaded the dataset through Power Query.

### 2. Data Type Inspection

| Column         | Data Type      |
| -------------- | -------------- |
| Row ID         | Whole Number   |
| Order ID       | Text           |
| Order Date     | Date           |
| Ship Date      | Date           |
| Ship Mode      | Text           |
| Customer ID    | Whole Number   |
| Country/Region | Text           |
| City           | Text           |
| State/Province | Text           |
| Postal Code    | Text           |
| Division       | Text           |
| Region         | Text           |
| Product ID     | Text           |
| Product Name   | Text           |
| Sales          | Decimal Number |
| Units          | Whole Number   |
| Gross Profit   | Decimal Number |
| Cost           | Decimal Number |

### 3. Data Quality Inspection

The following areas were inspected:

* Column names
* Data types
* Blank/null values
* Geographic fields
* Numeric fields
* Date fields
* Dataset row and column count

No irreversible cleaning was performed during Day 01.

### 4. DAX Measures Created

```DAX
Row Count = COUNTROWS(nassau_candy)

Total Sales = SUM(nassau_candy[Sales])

Total Units = SUM(nassau_candy[Units])

Total Gross Profit = SUM(nassau_candy[Gross Profit])

Total Cost = SUM(nassau_candy[Cost])
```

## Initial Profiling Visuals

A temporary profiling page was created containing:

* Card — Row Count
* Card — Total Sales
* Card — Total Units
* Card — Gross Profit
* Bar Chart — Ship Mode
* Bar Chart — Region
* Table — Product Name, Sales, Units, Gross Profit

The page is intended for initial validation and is not the final dashboard.

## Cross-Validation

The dataset contains **10,194 rows and 18 columns**.

The row count was cross-checked across:

| Tool     | Row Count |
| -------- | --------: |
| Python   |    10,194 |
| SQL      |    10,194 |
| Power BI |    10,194 |

SQL country distribution:

| Country/Region | Shipment Records |
| -------------- | ---------------: |
| United States  |            9,994 |
| Canada         |              200 |
| **Total**      |       **10,194** |

## Important Observation

The dataset contains unusual date ranges that require further investigation.

These observations were recorded but were not changed during Day 01.

## Day 01 Outcome

Power BI data import, initial profiling, data-type inspection, basic DAX measures, temporary visuals, and cross-validation were completed.

**Next:** Continue with Day 02 analysis and data-quality investigation.

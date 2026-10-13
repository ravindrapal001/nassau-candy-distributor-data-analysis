# Day 03 — Python Feature Engineering

## Project
**Factory-to-Customer Shipping Route Efficiency Analysis — Nassau Candy Distributor**

## Objective
The objective of Day 3 is to perform feature engineering using Python and Pandas to prepare the dataset for shipping route efficiency analysis.

## Tasks Completed
- Reviewed dataset columns and data types.
- Validated Order Date and Ship Date columns.
- Checked for invalid or missing date values.
- Investigated product, region, state, and location columns.
- Created a destination identifier using existing location columns.
- Investigated missing factory information before creating factory-to-customer routes.

## Feature Engineering

A destination identifier can be created using the available country and state columns.

```python
df["Route_State"] = (
    df["Country/Region"].astype("string").str.strip()
    + " -> "
    + df["State/Province"].astype("string").str.strip()
)
```

This identifies the destination at the country/state level. It does not represent a verified factory-to-customer route.

## Data Quality and Validation

During implementation, a `KeyError: 'Factory'` occurred because the dataset did not contain a column named `Factory`.

The available columns were inspected to identify the correct location and product fields. Factory-to-product mapping must be validated using an authoritative project-provided mapping before calculating factory-level route metrics.

## Tools Used
- Python
- Pandas
- Jupyter Notebook
- VS Code
- GitHub

## Day 3 Deliverables
- Date validation
- Dataset column inspection
- Destination identifier
- Factory mapping investigation
- Feature engineering notebook: `Day_03_feature_engineering.ipynb`

## Next Steps
- Validate factory-to-product mapping if available.
- Calculate shipping lead time.
- Analyze shipping delays and destination-level patterns.
- Prepare validated features for further analysis and visualization.

## Important Note
Factory-level route efficiency conclusions will not be reported until the factory-to-product mapping has been verified.

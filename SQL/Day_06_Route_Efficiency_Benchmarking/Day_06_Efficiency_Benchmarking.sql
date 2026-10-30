SELECT * FROM nassau_candy;


/*
Project: Nassau Candy Distributor
Analysis: Geographic Shipping Lead-Time Analysis

Purpose:
1. Calculate shipping lead time.
2. Analyze performance by State/Province and Ship Mode.
3. Identify faster and slower geographic-shipping groups.
4. Compare sales, gross profit, and order volume.

Source table: dbo.nassau_candy
*/

-- STEP 1: Select eligible records
WITH Eligible AS
(
    SELECT
        State_Province,
        Ship_Mode,
        Order_ID,
        Row_ID,

        DATEDIFF(
            DAY,
            Order_Date,
            Ship_Date
        ) AS Lead_Time_Days,

        Sales,
        Gross_Profit

    FROM dbo.nassau_candy

    WHERE State_Province IS NOT NULL
      AND Ship_Mode IS NOT NULL
      AND Order_Date IS NOT NULL
      AND Ship_Date IS NOT NULL
      AND Ship_Date >= Order_Date
),

-- STEP 2: Calculate shipping metrics
RouteMetrics AS
(
    SELECT
        State_Province,
        Ship_Mode,

        COUNT(*) AS Record_Count,

        COUNT(DISTINCT Order_ID) AS Distinct_Orders,

        AVG(
            1.0 * Lead_Time_Days
        ) AS Mean_Lead_Time_Days,

        SUM(Sales) AS Total_Sales,

        SUM(Gross_Profit) AS Total_Gross_Profit

    FROM Eligible

    GROUP BY
        State_Province,
        Ship_Mode
)

-- STEP 3: Rank geographic-shipping groups
SELECT
    State_Province,
    Ship_Mode,

    Record_Count,
    Distinct_Orders,

    CAST(
        Mean_Lead_Time_Days AS DECIMAL(10, 2)
    ) AS Mean_Lead_Time_Days,

    Total_Sales,
    Total_Gross_Profit,

    DENSE_RANK() OVER
    (
        ORDER BY Mean_Lead_Time_Days ASC
    ) AS Fastest_Rank,

    DENSE_RANK() OVER
    (
        ORDER BY Mean_Lead_Time_Days DESC
    ) AS Slowest_Rank

FROM RouteMetrics

ORDER BY
    Mean_Lead_Time_Days ASC,
    State_Province ASC,
    Ship_Mode ASC;

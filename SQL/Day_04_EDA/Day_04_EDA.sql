SELECT * FROM nassau_candy;

-- Ship Mode Business Summary
-- Compare business metrics across shipping mode

SELECT n.Ship_Mode,
COUNT(*) AS Record_Count,
COUNT(DISTINCT(n.Order_ID)) AS Distinct_Orders,
SUM(n.Sales) AS Total_Sales,
SUM(n.Units) AS Total_Units,
SUM(n.Gross_Profit) AS Total_Gross_Profit,
SUM(n.Cost) AS Total_Cost,
AVG(n.Sales) AS Avg_Sales_Per_Record
FROM nassau_candy AS n
GROUP BY n.Ship_Mode
ORDER BY Total_Sales;

-- Regional Performance Analysis
SELECT n.Region,
COUNT(*) AS Record_Count,
COUNT(DISTINCT(Order_ID)) AS Distinct_Orders,
SUM(n.Sales) AS Total_Sales,
SUM(n.Units) AS Total_Units,
SUM(n.Gross_Profit) AS Total_Gross_Profit,
SUM(n.Cost) AS Total_Cost,
CAST(100.0*SUM(n.Gross_Profit)/NULLIF(SUM(n.Sales),0) AS DECIMAL(10,2)) AS Gross_Profit_Margin_Pct
FROM nassau_candy AS n
GROUP BY n.Region
ORDER BY Total_Sales DESC;

-- Division Performance Analysis
SELECT n.Division,
COUNT(*) AS Record_Count,
COUNT(DISTINCT n.Order_ID) AS Distinct_Orders,
SUM(n.Sales) AS Total_Sales,
SUM(n.Units) AS Total_Units,
SUM(n.Gross_Profit) AS Total_Gross_Profit,
SUM(n.Cost) AS Total_Cost
FROM nassau_candy AS n
GROUP BY n.Division
ORDER BY Total_Sales DESC;

-- Top 10 states by sales
SELECT n.State_Province,
COUNT(*) AS Record_Count,
COUNT(DISTINCT Order_ID) AS Distinct_Orders,
SUM(n.Sales) AS Total_Sales,
SUM(n.Gross_Profit) AS Total_Gross_Profit
FROM nassau_candy AS n
GROUP BY n.State_Province
ORDER BY Total_Sales DESC, n.State_Province ASC;

-- Financial relationship and consistency check
SELECT COUNT_BIG(*) AS Total_Records,
SUM( CASE
WHEN n.Sales IS NULL 
OR n.Cost IS NULL
OR n.Gross_Profit IS NULL
THEN 1 
ELSE 0 
END
) AS Records_With_Missing_Financial_Values,
SUM(
CASE
WHEN n.Sales IS NOT NULL
AND Cost IS NOT NULL
AND n.Gross_Profit IS NOT NULL
AND ABS(n.Sales-(n.Cost+n.Gross_Profit))>0.01
THEN 1
ELSE 0
END
) AS Financial_Mismatch_Records
FROM nassau_candy AS n;

-- Inspect the actual shipping categories
SELECT n.Ship_Mode,
COUNT_BIG(*) AS Record_Count
FROM nassau_candy AS n
GROUP BY n.Ship_Mode
ORDER BY Record_Count DESC, n.Ship_Mode ASC;
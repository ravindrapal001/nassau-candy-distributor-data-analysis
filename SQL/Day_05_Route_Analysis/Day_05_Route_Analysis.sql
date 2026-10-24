SELECT * FROM nassau_candy;

-- Geographic route summary
SELECT n.Region,
n.State_Province,
CONCAT(n.Region,
'->',n.State_Province) AS Region_State_Route ,
COUNT(*) AS Record_Count,
COUNT(DISTINCT n.Order_ID) AS Distinct_Orders,
SUM(n.Sales) AS Total_Sales,
SUM(n.Units) AS Total_Units,
SUM(n.Gross_Profit) AS Total_Gross_Profit,
SUM(n.Cost) AS Total_Cost,
CAST(
100.0*SUM(n.Gross_Profit)/NULLIF(SUM(n.Sales),0) AS DECIMAL(10,2)) AS Gross_Profit_Margin_Pct
FROM nassau_candy AS n
GROUP BY n.Region, n.State_Province 
ORDER BY Total_Sales DESC;

--Highest-volume geographic groups
SELECT TOP 10 n.Region,
n.State_Province,
COUNT(*) AS Record_Count,
COUNT(DISTINCT n.Order_ID) AS Distinct_Orders,
SUM(n.Sales) AS Total_Sales,
SUM(n.Gross_Profit) AS Total_Gross_Profit
FROM nassau_candy AS n
GROUP BY n.Region,n.State_Province
ORDER BY Record_Count DESC;

--Rank geographic groups by sales
WITH RouteSummary AS(
SELECT n.Region,
n.State_Province,
COUNT(*) AS Record_Count,
COUNT(DISTINCT n.Order_ID ) AS Distinct_Orders,
SUM(n.Sales) AS Total_Sales,
SUM(n.Gross_Profit) AS Total_Gross_Profit
FROM nassau_candy AS n
GROUP BY n.Region,n.State_Province)
SELECT *, DENSE_RANK() OVER(
ORDER BY Total_Sales DESC) AS Sales_Rank
FROM RouteSummary
ORDER BY Sales_Rank;

-- Reconciliation
SELECT
COUNT(*) AS Total_Records,
SUM(n.Sales) AS Total_Sales,
SUM(n.Units) AS Total_Units,
SUM(n.Gross_Profit) AS Total_Gross_Profit,
SUM(n.Cost) AS Total_Cost
FROM nassau_candy AS n
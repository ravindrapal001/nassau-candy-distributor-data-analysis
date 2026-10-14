SELECT * FROM nassau_candy;

-- Day 3: Feature Engineering

--Confirm date validity before using lead time for performance analysis.
CREATE OR ALTER VIEW vw_NassauCandy_Features AS
SELECT
    Row_ID,
    Order_ID,
    Order_Date,
    Ship_Date,
    Ship_Mode,
    Customer_ID,
    Country_Region,
    City,
    State_Province,
    Postal_Code,
    Division,
    Region,
    Product_ID,
    Product_Name,
    Sales,
    Units,
    Gross_Profit,
    Cost,

    YEAR(Order_Date) AS Order_Year,
    MONTH(Order_Date) AS Order_Month,
    DATEPART(QUARTER, Order_Date) AS Order_Quarter,

    DATEDIFF(
        DAY,
        Order_Date,
        Ship_Date
    ) AS Preliminary_Lead_Time

FROM nassau_candy;


-- SQL Validation
SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Order_ID) AS Unique_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Units) AS Total_Units,
    SUM(Gross_Profit) AS Total_Gross_Profit,
    SUM(Cost) AS Total_Cost
FROM nassau_candy;

--Create Shipping Lead Time
SELECT
    Row_ID,
    Order_ID,
    Order_Date,
    Ship_Date,
    DATEDIFF(DAY, Order_Date, Ship_Date) AS Preliminary_Lead_Time
FROM nassau_candy;

-- Create Calender Features
SELECT
    Order_ID,
    Order_Date,
    YEAR(Order_Date) AS Order_Year,
    DATEPART(QUARTER, Order_Date) AS Order_Quarter,
    MONTH(Order_Date) AS Order_Month,
    DAY(Order_Date) AS Order_Day
FROM nassau_candy;



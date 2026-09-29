SELECT * FROM nassau_candy;

--1. Row Count
SELECT  COUNT(*) AS total_rows FROM nassau_candy;

--2. Columns/schema
EXEC sp_help 'nassau_candy';

--3. Ship models
SELECT N.Ship_Mode, COUNT(*) AS Shipment_records FROM nassau_candy AS N
GROUP BY N.Ship_Mode
ORDER BY Shipment_records DESC;

--4. Region Profile
SELECT N.Region,
COUNT(*) AS Shipment_Records,
SUM(N.Sales) AS Total_Sales,
SUM(N.Units) AS Total_Units,
SUM(N.Gross_Profit) AS Total_gross_profit
FROM nassau_candy AS N
GROUP BY N.Region
ORDER BY Shipment_Records DESC;

--5. Product Count
SELECT COUNT(DISTINCT(N.Product_Name)) AS Unique_Products 
FROM nassau_candy AS N;

--6. Country Distribution
SELECT N.Country_Region,
COUNT(*) AS Shipment_Records
FROM nassau_candy AS N
GROUP BY N.Country_Region
ORDER BY Shipment_Records DESC;
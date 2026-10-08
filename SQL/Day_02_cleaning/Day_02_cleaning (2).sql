SELECT * FROM nassau_candy;

-- Row Count
SELECT COUNT(*) AS total_rows FROM nassau_candy;

-- NULL Check
SELECT COUNT(*) AS total_rows,
SUM(CASE WHEN Order_ID IS NULL THEN 1 ELSE 0 END) AS null_order_id,
SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS null_order_date,
SUM(CASE WHEN Ship_Date IS NULL THEN 1 ELSE 0 END) AS null_ship_date,
SUM(CASE WHEN Ship_Mode IS NULL THEN 1 ELSE 0 END) AS null_ship_mode
FROM nassau_candy;

--Duplicate-row check
SELECT N.Order_ID,N.Product_ID,N.Order_Date,N.Ship_Date,COUNT(*) AS record_count FROM nassau_candy AS N
GROUP BY N.Order_ID,N.Product_ID,N.Order_Date,N.Ship_Date
HAVING COUNT(*)>1;

-- SQL Date Investigation
SELECT MIN(N.Order_Date) AS min_order_date,
MAX(N.Order_Date) AS max_order_date,
MIN(N.Ship_Date) AS min_ship_date,
MAX(N.Ship_Date) AS max_ship_date

FROM nassau_candy AS N;
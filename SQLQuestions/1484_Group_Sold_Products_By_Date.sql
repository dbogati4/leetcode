-- In Mysql
SELECT sell_date, COUNT(DISTINCT product) AS num_sold,
GROUP_CONCAT(DISTINCT product ORDER BY producT SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date


-- In SQL Server
SELECT sell_date, COUNT(DISTINCT product) AS num_sold,
STRING_AGG(DISTINCT product, ',') WITHIN GROUP (ORDER BY product) AS Products
FROM Activities
GROUP BY sell_date;
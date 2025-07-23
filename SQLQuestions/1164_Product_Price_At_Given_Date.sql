# Write your MySQL query statement below
with cte1 AS
(
SELECT P1.product_id, P1.new_price AS price
FROM Products P1
JOIN 
(SELECT product_id, MAX(change_date) AS change_date
FROM Products
WHERE change_date <= '2019-08-16'
GROUP BY product_id) P2
ON P1.product_id = P2.product_id
AND P1.change_date = P2.change_date
), cte2 AS
(SELECT DISTINCT product_id, 10 AS price
FROM Products
WHERE product_id NOT IN
(
    SELECT product_id
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)
)
SELECT * FROM cte1
UNION
SELECT * FROM cte2;

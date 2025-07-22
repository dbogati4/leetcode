SELECT S.product_id, S.year AS first_year, S.quantity, S.price
FROM Sales S
JOIN
(SELECT product_id, MIN(year) AS year
FROM Sales
GROUP BY product_id) AS S1
ON S.product_id = S1.product_id
AND S.year = S1.year;
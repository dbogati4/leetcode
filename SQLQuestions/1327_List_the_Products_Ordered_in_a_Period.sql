SELECT P.product_name, SUM(unit) AS unit
FROM Products P
JOIN Orders O 
ON P.product_id = O.product_id
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY P.product_name
HAVING SUM(unit) >= 100;
SELECT P.product_id, ROUND(IFNULL(SUM(P.price * U.units) / SUM(U.units), 0), 2) AS average_price
FROM Prices P 
LEFT JOIN UnitsSold U 
ON U.product_id = P.product_id
AND U.purchase_date BETWEEN P.start_date BETWEEN P.end_date
GROUP BY P.product_id;
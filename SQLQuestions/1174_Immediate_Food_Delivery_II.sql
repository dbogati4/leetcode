-- Im mysql
SELECT ROUND((COUNT(*) / (SELECT COUNT(DISTINCT customer_id) FROM Delivery))* 100 , 2) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN 
(SELECT customer_id, MIN(order_date)
FROM Delivery
GROUP BY customer_id)
AND order_date = customer_pref_delivery_date

-- in sql server
SELECT ROUND((CAST(COUNT(*) AS Float) / (SELECT COUNT(DISTINCT customer_id) FROM Delivery)) * 100 , 2) as immediate_percentage
FROM Delivery D 
JOIN 
(SELECT customer_id, MIN(order_date) AS order_date
FROM Delivery
GROUP BY customer_id) AS T
ON D.customer_id = T.customer_id
AND T.order_date = D.order_date
WHERE D.order_date = D.customer_pref_delivery_date
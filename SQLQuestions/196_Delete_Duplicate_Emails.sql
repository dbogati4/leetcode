-- for sql server
with cte1 AS
(SELECT *,
ROW_NUMBER() OVER(PARTITION BY email ORDER BY id) AS row_cnt
FROM Person)
DELETE FROM cte1
WHERE row_cnt > 1;

-- For MySQL
DELETE P1
FROM Person P1
JOIN Person P2
WHERE P1.email = P2.email
AND P1.id > P2.id
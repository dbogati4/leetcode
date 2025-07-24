with cte1 AS
(SELECT requester_id AS id, COUNT(*) AS num
FROM RequestAccepted
GROUP BY requester_id
UNION ALL
SELECT accepter_id AS id, COUNT(*) AS num
FROM RequestAccepted 
GROUP BY accepter_id ), cte2 AS
(SELECT id, SUM(num) AS num
FROM cte1
GROUP BY id)
SELECT *
FROM cte2
ORDER BY num DESC LIMIT 1;
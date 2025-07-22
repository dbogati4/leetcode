-- In SQL Server
SELECT ROUND(CAST(COUNT(*) AS Float) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM Activity A1
JOIN Activity A2
ON A1.player_id = A2.player_id 
AND DATEDIFF(DAY, A2.event_date, A1.event_date) = 1
JOIN 
(SELECT player_id, MIN(event_date) AS event_date
FROM Activity
GROUP BY player_id) AS A3
ON A3.player_id = A1.player_id
AND A3.event_date = A2.event_date;
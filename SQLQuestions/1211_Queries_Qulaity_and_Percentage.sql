SELECT query_name, ROUND(SUM(rating / position) / COUNT(*) , 2) AS quality,
ROUND((SUM(rating< 3) / COUNT(*)) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name; 
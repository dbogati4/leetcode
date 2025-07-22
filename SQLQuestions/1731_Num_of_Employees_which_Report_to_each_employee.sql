SELECT M.employee_id, M.name,
COUNT(*) as reports_count,
ROUND(AVG(CAST(E.age AS Float)), 0) AS average_age
FROM Employees E 
JOIN Employees M 
ON E.reports_to = M.employee_id
GROUP BY M.employee_id, M.name
ORDER BY employee_id;
SELECT EU.unique_id, EU.name
FROM Employees E
LEFT JOIN EmployeeUNI EU 
ON E.id = EU.id;
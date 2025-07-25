SELECT employee_id, department_id
FROM Employee
WHERE employee_id IN 
 (SELECT employee_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(department_id) = 1)
OR primary_flag = 'Y';
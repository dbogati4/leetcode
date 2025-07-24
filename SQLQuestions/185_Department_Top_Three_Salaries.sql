with cte1 AS
(
SELECT D.name AS Department, E.name AS Employee, E.salary,
DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) as rank_cnt
FROM Employee E
JOIN Department D
ON E.departmentId = D.id
)
SELECT Department, Employee, Salary
FROM cte1
WHERE rank_cnt <= 3;
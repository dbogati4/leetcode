-- in MySQL (This does not pass all the test cases)
SELECT (
SELECT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1 ) AS SecondHighestSalary;


-- This works tho
SELECT
(
SELECT salary
FROM Employee
WHERE salary < (
    SELECT MAX(salary) FROM Employee
)
ORDER BY salary DESC
LIMIT 1
) AS SecondHighestSalary;

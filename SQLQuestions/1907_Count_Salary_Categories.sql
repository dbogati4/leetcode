# Write your MySQL query statement below
with cte1 AS
(
SELECT "Low Salary" AS category, COUNT(*) AS accounts_count
FROM Accounts
WHERE income < 20000),
cte2 AS (
    SELECT "Average Salary" AS category, COUNT(*) AS accounts_count
    FROM Accounts
    WHERE income BETWEEN 20000 AND 50000
), cte3 AS (
    SELECT "High Salary" AS category, COUNT(*) AS accounts_count
    FROM Accounts
    WHERE income > 50000
)
SELECT * FROM cte1
UNION 
SELECT * FROM cte2
UNION
SELECT * FROM cte3;
-- https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50

-- Second Highest Salary

-- using cte: calculates the second rank 
-- but not catches null value or distinct value conditions

WITH cte AS (
    SELECT
        id,
        salary,
        RANK() OVER(ORDER BY salary DESC) AS ranking
    FROM Employee
)
SELECT salary AS SecondHighestSalary
FROM cte
WHERE ranking = 2

-- using subquery

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee)

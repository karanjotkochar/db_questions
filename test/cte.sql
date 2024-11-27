-- Common Table Expression (CTE)

WITH cte_name AS (
    SELECT query
)

SELECT * FROM cte_name

-- Second highest salary
-- Columns: Name, salary

WITH cte AS (
    DENSE_RANK() OVER (ORDER BY Salary DESC) AS Rank
    FROM Employee
)
SELECT Name 
FROM cte
WHERE Rank = 2
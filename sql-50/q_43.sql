-- https://leetcode.com/problems/department-top-three-salaries/description/?envType=study-plan-v2&envId=top-sql-50

-- Department Top Three Salaries

WITH cte AS (
    SELECT 
        d.name AS Department, 
        e.name AS Employee, 
        e.salary AS Salary,
        DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS ranking
    FROM Employee AS e
    JOIN Department AS d
    ON e.departmentId = d.id
    -- ORDER BY d.name
)
SELECT Department, Employee, Salary 
FROM cte
WHERE ranking IN (1,2,3)
-- https://leetcode.com/problems/count-salary-categories/?envType=study-plan-v2&envId=top-sql-50

-- Count Salary Categories

WITH cte AS (
    SELECT 
    account_id, 
    income, 
    CASE 
        WHEN income < '20000' THEN 'Low Salary'
        WHEN income BETWEEN '20000' AND '50000' THEN 'Average Salary'
        WHEN income > '50000' THEN 'High Salary'
        ELSE '0'
        END AS category
    FROM Accounts
)

SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count
FROM cte
WHERE category = 'Low Salary'

UNION ALL

SELECT 'Average Salary' AS category, COUNT(*)
FROM cte
WHERE category = 'Average Salary'

UNION ALL

SELECT 'High Salary' AS category, COUNT(*)
FROM cte
WHERE category = 'High Salary'

-- can be done by 3 expressions and union all
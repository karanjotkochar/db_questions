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
SELECT category, COUNT (category) AS accounts_count
FROM cte
GROUP BY category
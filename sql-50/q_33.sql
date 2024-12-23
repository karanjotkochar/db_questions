-- https://leetcode.com/problems/consecutive-numbers/description/?envType=study-plan-v2&envId=top-sql-50

-- Consecutive Numbers

-- Self Join: is simply a conceptual reference to joining the table to itself
-- To specify the join type, using: 'Inner Join' or simply 'Join'

SELECT DISTINCT L1.num AS ConsecutiveNums
    FROM Logs AS L1
    INNER JOIN Logs AS L2 ON L1.id = L2.id - 1
    INNER JOIN Logs AS L3 ON L1.id = L3.id - 2
    WHERE L1.num = L2.num
        AND L1.num = L3.num

-- Second approach
-- Window Function

WITH cte AS (
    SELECT
        id, 
        num, 
        LEAD(num, 1) OVER(ORDER BY id) AS next_num, 
        LEAD(num, 2) OVER(ORDER BY id) AS next2_num
    FROM Logs      
)
SELECT DISTINCT num AS ConsecutiveNums
FROM cte
WHERE num = next_num AND num = next2_num

-- DISTINCT because the value can be repeated more than 3 times and then there 
-- are 2 records, which is incorrect
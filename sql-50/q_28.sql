-- https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50

-- Biggest Single Number

SELECT MAX(num) AS num
FROM (
    SELECT num 
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)
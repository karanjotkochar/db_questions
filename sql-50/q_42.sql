-- https://leetcode.com/problems/investments-in-2016/description/?envType=study-plan-v2&envId=top-sql-50

-- Investments in 2016

SELECT * 
FROM Insurance

-- final: sum of total investments
SUM(tiv_2016) 

-- condition 1
WHERE COUNT(tiv_2015) > 1

-- condition 2
-- lat, lon not same
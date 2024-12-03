-- https://leetcode.com/problems/investments-in-2016/description/?envType=study-plan-v2&envId=top-sql-50

-- Investments in 2016

SELECT * 
FROM Insurance

-- final: sum of total investments

-- condition 1
-- combined tiv_2015, more than 1, count >1 

-- condition 2
-- lat, lon not same

SELECT lat, lon
FROM Insurance
GROUP BY lat, lon
HAVING COUNT(*) = 1

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
)

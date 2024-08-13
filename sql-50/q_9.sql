-- https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50

-- Rising temperature

-- MySQL
SELECT previous.id
FROM Weather AS current, Weather AS previous
WHERE DATEDIFF(previous.recordDate, current.recordDate) = 1
AND previous.temperature > current.temperature

-- PostgreSQL

SELECT current.id
FROM Weather AS current
JOIN Weather AS previous
ON current.recordDate = previous.recordDate + 1
WHERE current.temperature > previous.temperature


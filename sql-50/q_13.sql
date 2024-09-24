-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50

-- Managers with at least 5 direct reports

SELECT e.name
FROM Employee e
INNER JOIN Employee m
ON e.id = m.managerId 
GROUP BY m.managerId
HAVING COUNT(m.managerId) >= 5
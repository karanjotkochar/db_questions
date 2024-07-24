-- https://leetcode.com/problems/employees-earning-more-than-their-managers/

-- Employees earning more than their managers

SELECT emp2.name AS "Employee" 
FROM Employee AS emp1
JOIN Employee AS emp2
ON emp1.id = emp2.managerId
WHERE emp1.salary < emp2.salary
-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

-- Replace Employee ID With The Unique Identifier

SELECT e2.unique_id, e1.name
FROM Employees AS e1
LEFT JOIN EmployeeUNI AS e2
ON e1.id = e2.id
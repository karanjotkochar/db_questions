-- https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50

-- Employees whose manager left the company

SELECT employee_id 
FROM Employees
WHERE salary < 30000 
AND manager_id NOT IN 
    (
    SELECT employee_id 
    FROM Employees
    )
ORDER BY employee_id

-- Can be done by Self JOIN as well
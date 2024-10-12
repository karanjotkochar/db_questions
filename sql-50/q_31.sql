-- https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

-- Primary Department for Each Employee

SELECT employee_id, department_id
FROM Employee
WHERE employee_id IN 
    (
    SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(employee_id) = 1
    ) 
    OR primary_flag = 'Y'
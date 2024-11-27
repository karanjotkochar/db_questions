-- Aggregate Window Function
SELECT 
Name, Age, Department, Salary, OVER(PARTITION BY Department) AS AVG_SALARY
FROM Employee


-- Ranking Window Function

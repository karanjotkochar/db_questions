-- Aggregate Window Function
SELECT 
    Name, Age, Department, Salary, OVER(PARTITION BY Department) AS AVG_SALARY
FROM Employee


-- Ranking Window Function
SELECT
    ROW_NUMBER() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_row_no,
    Name,
    Department,
    Salary,
    RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_rank,
    DENSE_RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_dense_rank,
    LEAD(id.., 1) OVER(PARTITION BY .. ORDER BY ..),
    LEAD(id.., 2) OVER(PARTITION BY .. ORDER BY ..)
FROM Employee


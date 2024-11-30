-- https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50

-- Triangle Judgement

/*
    To form a triangle:
    sum of any 2 sides >(greater than) third side
*/

WITH cte AS (
    SELECT x, y, z, IF ((x+y)>z && (y+z)>x && (x+z)>y, "Yes", "No") AS triangle
    FROM Triangle
)

SELECT * 
FROM cte

-- OR

SELECT x, y, z, IF ((x+y)>z && (y+z)>x && (x+z)>y, "Yes", "No") AS triangle
FROM Triangle
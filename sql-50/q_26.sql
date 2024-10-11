-- https://leetcode.com/problems/classes-more-than-5-students/?envType=study-plan-v2&envId=top-sql-50

-- Classes More Than 5 Students

SELECT class
FROM Courses
GROUP BY class
HAVING count(*) > 4
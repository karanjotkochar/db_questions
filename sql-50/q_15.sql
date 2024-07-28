-- https://leetcode.com/problems/not-boring-movies/?envType=study-plan-v2&envId=top-sql-50

-- Not Boring Movies

SELECT * 
FROM Cinema
WHERE id % 2 != 0
AND description NOT LIKE 'boring'
ORDER BY rating DESC
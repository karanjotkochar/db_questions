-- https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50

-- Article Views I

SELECT DISTINCT author_id AS id
FROM Views
WHERE (author_id = viewer_id) 
ORDER BY id ASC
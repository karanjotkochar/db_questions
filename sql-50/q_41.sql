-- https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/?envType=study-plan-v2&envId=top-sql-50

-- Friend Requests II: Who Has the Most Friends

WITH cte AS (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
)
SELECT id, COUNT(id) AS num 
FROM cte 
GROUP BY id
ORDER BY num DESC
LIMIT 1
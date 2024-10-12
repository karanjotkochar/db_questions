-- https://leetcode.com/problems/find-followers-count/description/?envType=study-plan-v2&envId=top-sql-50

-- Find Followers Count

SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id
-- https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50

-- Invalid Tweets

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15
-- WHERE CHAR_LENGTH(content) > 15


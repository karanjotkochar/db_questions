-- https://leetcode.com/problems/duplicate-emails/description/

-- Duplicate Emails

SELECT email AS Email
FROM Person
GROUP BY email
HAVING count(email)>1
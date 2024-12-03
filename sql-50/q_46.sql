-- https://leetcode.com/problems/delete-duplicate-emails/description/?envType=study-plan-v2&envId=top-sql-50

-- Delete Duplicate Emails

DELETE
FROM Person p1 
USING Person p2
WHERE p1.email = p2.email
AND p1.id > p2.id
-- https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50

-- Confirmation Rate

SELECT Signups.user_id, 
ROUND(AVG(CASE WHEN Confirmations.action = 'confirmed' THEN 1 ELSE 0 END), 2) AS confirmation_rate
FROM Signups
LEFT JOIN Confirmations
ON Signups.user_id = Confirmations.user_id
GROUP BY Signups.user_id
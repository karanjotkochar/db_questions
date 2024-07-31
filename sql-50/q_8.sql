-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50

-- Customer who visited but did not make any transactions

SELECT customer_id, COUNT (customer_id) AS count_no_trans
FROM Visits v
JOIN Transactions t
ON v.visit_id = t.visit_id
GROUP BY customer_id
-- HAVING transaction_id == NULL
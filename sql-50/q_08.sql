-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50

-- Customer who visited but did not make any transactions

SELECT v.customer_id, COUNT (v.customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id
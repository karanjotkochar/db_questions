-- https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50

-- Immediate Food Delivery II

WITH cte AS (
    SELECT *, RANK() OVER(PARTITION BY customer_id ORDER BY order_date) AS ranking
    FROM Delivery
)

SELECT 
    ROUND(AVG(CASE WHEN order_date = customer_pref_delivery_date THEN 1.00 ELSE 0.00 END)*100, 2) 
    AS immediate_percentage
FROM cte
WHERE ranking = 1
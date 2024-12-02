-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/?envType=study-plan-v2&envId=top-sql-50

-- Last Person to Fit in the Bus

-- used subquery because WHERE clause is calculated first than SELECT clause, so cannot use ALIAS
-- using window function

SELECT person_name FROM (
    SELECT 
        person_id, 
        turn, 
        person_name, 
        weight,
        SUM(weight) OVER(ORDER BY turn) AS agg_sum
    FROM Queue
) AS subquery
WHERE agg_sum <= 1000
ORDER BY agg_sum DESC
LIMIT 1

-- using joins (self join)
SELECT q1.person_name
FROM Queue AS q1
JOIN Queue AS q2
    ON q1.turn >= q2.turn
GROUP BY q1.turn, q1.person_name
HAVING SUM(q2.weight) <= 1000
ORDER BY SUM(q2.weight) DESC
LIMIT 1
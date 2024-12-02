-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/?envType=study-plan-v2&envId=top-sql-50

-- Last Person to Fit in the Bus

-- used subquery because WHERE clause is calculated first than SELECT clause, so cannot use ALIAS

SELECT * FROM (
    SELECT 
        person_id, 
        turn, 
        person_name, 
        weight,
        SUM(weight) OVER(ORDER BY turn) AS agg_sum
    FROM Queue
)
WHERE agg_sum <= 1000
ORDER BY agg_sum DESC
LIMIT 1
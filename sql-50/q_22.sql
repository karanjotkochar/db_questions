-- https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50

-- Game Play Analysis IV

WITH cte AS (
    SELECT player_id, 
        DATEDIFF(
            LEAD(event_date) OVER(PARTITION BY player_id ORDER BY event_date) AS nextdate,
            event_date) = 1 AS date_diff,
        RANK() OVER(PARTITION BY player_id ORDER BY event_date DESC) AS ranking
    FROM Activity
)

SELECT 
    ROUND (
        COUNT(IF(date_diff = 1,player_id, null))/ COUNT(DISTINCT player_id), 2) AS fraction
FROM cte
WHERE ranking = 1

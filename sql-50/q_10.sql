-- https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50

-- Average time of process per machine


SELECT startActivity.machine_id, 
ROUND(AVG(endActivity.timestamp-startActivity.timestamp), 3) AS processing_time
FROM Activity AS startActivity
JOIN Activity AS endActivity
ON startActivity.machine_id = endActivity.machine_id 
AND startActivity.process_id = endActivity.process_id 
AND startActivity.activity_type='start' and endActivity.activity_type='end'
GROUP BY startActivity.machine_id
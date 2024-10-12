-- https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50

-- Exchange seats

SELECT 
    CASE
        WHEN id = (SELECT MAX(id) FROM seat) AND (id % 2) = 1
            THEN id
        WHEN (id % 2) = 1
            THEN id + 1
        ELSE (id -1)
    END AS id,
    student
FROM Seat
ORDER BY id
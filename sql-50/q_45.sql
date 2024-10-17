-- https://leetcode.com/problems/patients-with-a-condition/description/?envType=study-plan-v2&envId=top-sql-50

-- Patients With a Condition

SELECT *
FROM Patients
WHERE conditions LIKE '% DIAB1%'
   OR conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1'
   OR conditions = 'DIAB1'

SELECT *
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%'
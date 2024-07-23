-- https://leetcode.com/problems/combine-two-tables/

-- Combine Two Tables

SELECT firstName, lastName, city, state FROM Person
LEFT JOIN Address
ON Person.personId = Address.personId
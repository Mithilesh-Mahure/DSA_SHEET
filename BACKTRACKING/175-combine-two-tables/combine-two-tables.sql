# Write your MySQL query statement below
SELECT per.firstname,per.lastname,adr.city,adr.state 
FROM Person as per
LEFT JOIN Address as adr
ON per.personId = adr.personId 

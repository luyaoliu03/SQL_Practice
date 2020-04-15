SELECT FirstName, LastName, City, State
FROM Person A LEFT JOIN Address B
ON A.PersonId = B.PersonId

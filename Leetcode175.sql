SELECT FirstName, LastName, City, State
FROM Person a LEFT JOIN Address b
ON a.PersonId = b.PersonId

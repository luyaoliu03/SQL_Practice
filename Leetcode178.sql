SELECT score
     , DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM scores
ORDER BY 2 ASC
;

/*
mySQL needs quote for the column name
DENSE_RANK() doesn't skip the numbers, and will give the same number for the same rank.
*/

/* IFNULL function */

SELECT IFNULL(
(SELECT DISTINCT SALARY
FROM Employee
ORDER BY Salary Desc
LIMIT 1,1), NULL)
AS SecondHighestSalary
;

/*LIMIT (offset A, row_counts B)
SKIP A rows, start to count from A+1, the Bth row
Here LIMIT 1,1 means the second row
https://www.mysqltutorial.org/mysql-limit.aspx
*/

/* Why this can't work

SELECT CASE WHEN
(SELECT SALARY
FROM Employee
ORDER BY Salary Desc
LIMIT 1,1) IS NULL
THEN NULL
END AS SecondHighestSalary
;

*/

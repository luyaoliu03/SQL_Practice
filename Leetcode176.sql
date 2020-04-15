/* It's not correct - need to be fixed */

SELECT CASE WHEN
(SELECT SALARY
FROM Employee
ORDER BY Salary Desc
LIMIT 1,1) IS NULL
THEN NULL
END AS SecondHighestSalary
;

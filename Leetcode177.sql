/* To get Nth highest salary, create a function */

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N-1;
  RETURN (
      IFNULL(
      (SELECT DISTINCT Salary
      FROM Employee
      ORDER BY Salary Desc
      LIMIT M,1), NULL)
  );
END

/* Why we have to re-create M as (N-1)?
Bcause MySQL only takes numeric constants in the LIMIT syntax.
*/

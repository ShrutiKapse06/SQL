-- Find Employees with Highest Salary

SELECT *
FROM (
	SELECT *,
	MAX(Salary) OVER() AS HighestSalary
	FROM Sales.Employees)t 
WHERE Salary = HighestSalary

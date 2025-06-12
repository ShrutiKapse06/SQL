-- Find the lowest and highest sales for each product

SELECT
	OrderID,
	ProductID,
	Sales,
	FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales) AS LowestValue,
	LAST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS HighestValue
FROM Sales.Orders

-- Here Sales will be in ascending throughout, making sure the first value is lowest and last is the highest.
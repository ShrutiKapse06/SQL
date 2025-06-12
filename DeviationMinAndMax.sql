-- Find deviation of each Sales from the minimum and maximum sales amount

SELECT
	OrderID,
	ProductID,
	Sales,
	MIN(Sales) OVER() AS MinSales,
	Sales - MIN(Sales) OVER() AS DeviationMin,
	MAX(Sales) OVER() AS MaxSales,
	MAX(Sales) OVER() - Sales As DeviationMax
FROM Sales.Orders
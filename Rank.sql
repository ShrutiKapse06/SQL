-- Rank customers based on their total sales

SELECT
	CustomerID,
	SUM(Sales) AS TotalSales,
	RANK() OVER(ORDER BY SUM(Sales) DESC) AS RankCustomers
FROM Sales.Orders
GROUP BY CustomerID
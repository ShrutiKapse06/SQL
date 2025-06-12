-- Find lowest two customers by Sales

SELECT *
FROM (
	SELECT
		CustomerID,
		SUM(Sales) AS TotalSales,
		ROW_NUMBER() OVER(ORDER BY SUM(Sales)) AS TotalSalesRank
	FROM Sales.Orders
	GROUP BY CustomerID
	)t
WHERE TotalSalesRank <=2
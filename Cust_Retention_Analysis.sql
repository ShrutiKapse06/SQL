-- In order to check customer loyalty, rank customers based on the average days between their orders. One can use LEAD instead of LAG, it will give same result.

SELECT 
	CustomerID,
	AVG(DATEDIFF(day, PrevOrder, OrderDate)) AS AvgDays,
	RANK() OVER(ORDER BY COALESCE(AVG(DATEDIFF(day, PrevOrder, OrderDate)),99999)) AS RANK
FROM (
	SELECT
		OrderID,
		CustomerID,
		OrderDate,
		LAG(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderID) AS PrevOrder
	FROM Sales.Orders
	)t
GROUP BY CustomerID

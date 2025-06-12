-- Generate a report showing the total sales for category:
-- High > 50, Medium 20-50, low 20<=, sort in ASC

SELECT
	Category,
	SUM(Sales) AS TotalSales
FROM(
	SELECT
		OrderID,
		Sales,
		Case
			WHEN Sales>50 THEN 'High'
			WHEN Sales>20 THEN 'Medium'
			ELSE 'Low'
		END AS Category
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY SUM(Sales) ASC
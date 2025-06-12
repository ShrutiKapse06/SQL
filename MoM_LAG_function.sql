-- Analyse month over month performance by finding the percentage change in sales between the current and previous months.

SELECT *,
	MonthlySales - PrevSales AS change,
	ROUND(CAST((MonthlySales - PrevSales) AS float)/PrevSales * 100, 2) AS MoM_change
FROM (
	SELECT
		MONTH(OrderDate) AS MonthNo,
		SUM(Sales) AS MonthlySales,
		LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) AS PrevSales
	FROM Sales.Orders
	GROUP BY MONTH(OrderDate)
	)t
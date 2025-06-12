-- Identify duplicate rows in OrdersArchive Table and clean them.

SELECT *
FROM (
	SELECT
		ROW_NUMBER() OVER(PARTITION BY OrderID ORDER BY CreationTime DESC) AS flag,
		*
	FROM Sales.OrdersArchive
	)t
WHERE flag=1
-- Assign Unique ID to rows from Table OrdersArchive

SELECT
	ROW_NUMBER() OVER(ORDER BY CreationTime) AS PK,
	*
FROM Sales.OrdersArchive
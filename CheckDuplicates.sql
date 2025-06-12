-- Find duplicates of orders

SELECT
	OrderID,
	COUNT(*) OVER(PARTITION BY OrderID) AS CheckPK
FROM Sales.OrdersArchive

-- Find only duplicates
SELECT *
FROM (
	SELECT
		OrderID,
		COUNT(*) OVER(PARTITION BY OrderID) AS CheckPK
	FROM Sales.OrdersArchive)t
WHERE CheckPK>1
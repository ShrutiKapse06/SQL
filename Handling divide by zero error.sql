-- Find sales price for each order by dividing the sales by quantity.

SELECT
	OrderID,
	Quantity,
	Sales,
	Sales/NULLIF(Quantity, 0) AS Price
FROM Sales.Orders
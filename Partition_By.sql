-- Find total sales.
-- Find the total sales for each product. Additionally provide details as Order ID, Order date
-- Find total sales for each product and orderstatus combined.

SELECT
	OrderID,
	ProductID,
	OrderStatus,
	Sales,
	SUM(Sales) OVER() AS TotalSales,
	SUM(Sales) OVER(PARTITION BY ProductID) AS TotalSalesByProducts,
	SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus) AS TotalSalesByProductAndOrderStatus
FROM Sales.Orders
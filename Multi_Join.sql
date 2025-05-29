/*Using SalesDB, retrieve a list of all orders, along with the related customer, product and employee details for:
Order ID,
customer's name,
product name,
sales amount,
product price,
salesperson's name*/

SELECT 
	o.OrderID,
	c.FirstName AS CustomerFirstName,
	c.LastName AS CustomerLastName,
	p.Product,
	o.Sales,
	p.Price,
	e.FirstName AS EmpFirstName,
	e.LastName AS EmpLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees As e
ON o.SalesPersonID = e.EmployeeID

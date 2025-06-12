-- Find products with highest 40% prices.

SELECT *,
	CONCAT(PercentPrice * 100, '%') AS InPer
FROM (
	SELECT *,
		CUME_DIST() OVER(ORDER BY Price DESC) AS PercentPrice
	FROM Sales.Products
	)t
WHERE PercentPrice <= 0.4
-- NTILE

SELECT
	OrderID,
	Sales,
	NTILE(1) OVER(ORDER BY Sales DESC) AS OneBucket,
	NTILE(2) OVER(ORDER BY Sales DESC) AS TwoBucket,
	NTILE(3) OVER(ORDER BY Sales DESC) AS ThreeBucket,
	NTILE(4) OVER(ORDER BY Sales DESC) AS FourBucket,
	NTILE(5) OVER(ORDER BY Sales DESC) AS FiveBucket
FROM Sales.Orders
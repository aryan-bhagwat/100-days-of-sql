-- Day 5: Using Window Functions – Cumulative Sales by Country

SELECT 
    Country,
    InvoiceDate,
    ROUND(SUM(Quantity * UnitPrice) OVER (PARTITION BY Country ORDER BY InvoiceDate), 2) AS CumulativeSales
FROM Orders
WHERE Quantity > 0 AND UnitPrice > 0;

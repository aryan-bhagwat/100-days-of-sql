-- Day 3 Query 2: Top 3 months by sales

SELECT TOP 3
    FORMAT(InvoiceDate, 'yyyy-MM') AS Month,
    ROUND(SUM(Quantity * UnitPrice), 2) AS TotalSales
FROM Orders
WHERE Quantity > 0 AND UnitPrice > 0
GROUP BY FORMAT(InvoiceDate, 'yyyy-MM')
ORDER BY TotalSales DESC;

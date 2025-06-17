-- Day 3 Query 1: Monthly total sales

SELECT 
    FORMAT(InvoiceDate, 'yyyy-MM') AS Month,
    ROUND(SUM(Quantity * UnitPrice), 2) AS TotalSales
FROM Orders
WHERE Quantity > 0 AND UnitPrice > 0
GROUP BY FORMAT(InvoiceDate, 'yyyy-MM')
ORDER BY Month;
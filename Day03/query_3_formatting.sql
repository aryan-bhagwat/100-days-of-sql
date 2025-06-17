-- Day 3 Query 3: Get orders with weekday filtering

SELECT 
    InvoiceNo,
    FORMAT(InvoiceDate, 'dddd') AS DayOfWeek,
    FORMAT(InvoiceDate, 'yyyy-MM-dd') AS OrderDate,
    Quantity,
    UnitPrice
FROM Orders
WHERE DATENAME(WEEKDAY, InvoiceDate) NOT IN ('Saturday', 'Sunday');
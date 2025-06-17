-- Day 2: Customers whose total spend is above average

SELECT 
    CustomerID,
    ROUND(SUM(Quantity * UnitPrice), 2) AS TotalSpent
FROM Orders
WHERE Quantity > 0 AND UnitPrice > 0
GROUP BY CustomerID
HAVING SUM(Quantity * UnitPrice) > (
    SELECT AVG(Quantity * UnitPrice)
    FROM Orders
    WHERE Quantity > 0 AND UnitPrice > 0
)
ORDER BY TotalSpent DESC;

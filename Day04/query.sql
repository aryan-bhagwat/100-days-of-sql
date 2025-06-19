-- Day 4: JOINs – List all orders with product names and profit

SELECT 
    o.OrderID,
    o.ProductID,
    p.ProductName,
    o.Quantity,
    o.UnitPrice,
    o.Quantity * o.UnitPrice AS TotalPrice,
    o.Profit
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.Quantity > 0;

-- Day 1: Top 5 Countries by Revenue with Classification

SELECT 
    Country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS TotalRevenue,
    
    CASE
        WHEN SUM(Quantity * UnitPrice) > 500000 THEN '🔥 High Value Market'
        WHEN SUM(Quantity * UnitPrice) BETWEEN 100000 AND 500000 THEN '🌟 Mid Tier Market'
        ELSE '📉 Low Tier Market'
    END AS RevenueCategory

FROM Orders
WHERE Quantity > 0 AND UnitPrice > 0
GROUP BY Country
ORDER BY TotalRevenue DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
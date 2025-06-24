-- Day 10: Total number of orders from each city

SELECT
    city,
    COUNT(order_id) AS total_orders
FROM
    orders
GROUP BY
    city
ORDER BY
    total_orders DESC;

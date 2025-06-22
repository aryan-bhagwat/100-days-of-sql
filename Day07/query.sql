-- Day 7: Find customers who placed more than one order

SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM
    orders
GROUP BY
    customer_id
HAVING COUNT(order_id) > 1
ORDER BY
    total_orders DESC;

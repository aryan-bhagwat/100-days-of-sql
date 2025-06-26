-- Day 11: Find the product with the highest number of total orders

SELECT
    product_name,
    COUNT(order_id) AS total_orders
FROM
    orders
GROUP BY
    product_name
ORDER BY
    total_orders DESC
LIMIT 1;

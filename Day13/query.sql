-- Day 13: Number of orders per product category

SELECT
    category,
    COUNT(order_id) AS order_count
FROM
    orders
GROUP BY
    category
ORDER BY
    order_count DESC;

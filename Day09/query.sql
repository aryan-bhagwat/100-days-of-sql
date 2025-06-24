-- Day 9: Select orders for a specific product category

SELECT
    order_id,
    customer_id,
    product_name,
    category,
    sales
FROM
    orders
WHERE
    category = 'Technology'
ORDER BY
    sales DESC;

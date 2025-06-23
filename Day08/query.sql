-- Day 8: Select all orders where a discount was applied

SELECT
    order_id,
    customer_id,
    product_id,
    discount,
    sales
FROM
    orders
WHERE
    discount > 0
ORDER BY
    discount DESC;

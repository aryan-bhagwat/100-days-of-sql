-- Day 6: Cumulative revenue by product using window functions

SELECT
    product_id,
    order_date,
    revenue,
    SUM(revenue) OVER (
        PARTITION BY product_id
        ORDER BY order_date
    ) AS cumulative_revenue
FROM
    sales
ORDER BY
    product_id, order_date;

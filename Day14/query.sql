-- Day 14: Calculate profit margin for each product

SELECT
    product_id,
    product_name,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 2) AS profit_margin
FROM
    orders
GROUP BY
    product_id, product_name
ORDER BY
    profit_margin DESC;

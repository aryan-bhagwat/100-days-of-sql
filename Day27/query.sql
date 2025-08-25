-- Day 27 : Calculate average order value per customer

SELECT c.customer_name,
       AVG(order_total) AS avg_order_value
FROM (
    SELECT o.order_id, o.customer_id,
           SUM(oi.quantity * oi.unit_price) AS order_total
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY o.order_id, o.customer_id
) sub
JOIN customers c ON sub.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY avg_order_value DESC;

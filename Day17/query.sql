-- Day 17: Find the order with the highest total value
SELECT order_id, customer_id, order_total
FROM orders
ORDER BY order_total DESC
LIMIT 1;

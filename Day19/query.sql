-- Day 19: Total number of orders and total spend by each customer
SELECT customer_id, COUNT(order_id) AS total_orders, SUM(order_total) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;

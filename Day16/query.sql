-- Day 16: Find customers who spent the most in total
SELECT customer_id, SUM(order_total) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;

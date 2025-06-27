-- Day 12: Find customers who spent the most in total

SELECT
    customer_id,
    ROUND(SUM(sales), 2) AS total_spent
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    total_spent DESC
LIMIT 5;

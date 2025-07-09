-- Day 21: Find orders with more than 3 items

SELECT order_id, COUNT(*) AS item_count
FROM order_items
GROUP BY order_id
HAVING COUNT(*) > 3;

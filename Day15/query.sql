-- Day 15: Analyze monthly sales trends
SELECT 
    YEAR(order_date) as year,
    MONTH(order_date) as month,
    MONTHNAME(order_date) as month_name,
    COUNT(*) as total_orders,
    SUM(sales) as total_sales,
    AVG(sales) as avg_order_value,
    ROUND(SUM(sales) - LAG(SUM(sales)) OVER (ORDER BY YEAR(order_date), MONTH(order_date)), 2) as sales_change
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date), MONTHNAME(order_date)
ORDER BY year, month;
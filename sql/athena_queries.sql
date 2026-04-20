SELECT *
FROM raw
LIMIT 10;

SELECT city, SUM(total_amount) AS total_sales
FROM raw
GROUP BY city
ORDER BY total_sales DESC;

SELECT
city,
COUNT(order_id) AS total_orders,
SUM(total_amount) AS total_sales,
AVG(total_amount) AS avg_order_value
FROM processed
GROUP BY city
ORDER BY total_sales DESC;

CREATE TABLE fact_sales (
order_id VARCHAR(20),
customer_id VARCHAR(20),
product_id VARCHAR(20),
order_date DATE,
quantity INT,
total_amount DECIMAL(10,2),
city VARCHAR(100)
);
COPY fact_sales
FROM 's3://retailmart-sales-data-prithiv/processed/'
IAM_ROLE 'arn:aws:iam::your-account-id:role/GlueS3RedshiftRole'
FORMAT AS PARQUET;
SELECT
city,
SUM(total_amount) AS total_revenue
FROM fact_sales
GROUP BY city
ORDER BY total_revenue DESC;

# AWS Batch ETL Pipeline Project

## Project Overview

Designed and implemented a batch ETL pipeline using AWS services to process sales transaction data for analytics and reporting.

The pipeline ingests raw CSV files into Amazon S3, transforms the data using AWS Glue ETL jobs, catalogs metadata using Glue Crawlers, performs analytics using Amazon Athena, and prepares warehouse-ready data for Amazon Redshift.

---

## Architecture

Raw CSV Files
→ Amazon S3 (Raw Zone)
→ AWS Glue ETL Job
→ S3 Processed Zone (Parquet Format)
→ Glue Data Catalog
→ Amazon Athena
→ Amazon Redshift (Warehouse Layer)

---

## AWS Services Used

* Amazon S3
* AWS Glue
* AWS Glue Crawler
* AWS Glue Data Catalog
* Amazon Athena
* Amazon Redshift
* AWS IAM
* Amazon CloudWatch

---

## ETL Logic

* Read raw CSV files from S3
* Remove null values
* Remove duplicate records
* Transform CSV to Parquet
* Store cleaned data in processed zone
* Query analytics using Athena
* Prepare warehouse loading using Redshift COPY command

---

## Business Value

* Improved query performance using Parquet format
* Reduced Athena scan cost
* Enabled revenue analytics by city
* Built warehouse-ready fact table design
* Supported reporting and business decision-making

---

## Sample Business Query

SELECT city, SUM(total_amount) AS total_sales
FROM sales_cleaned
GROUP BY city
ORDER BY total_sales DESC;

---

## Resume Impact

This project demonstrates practical experience in:

* Batch ETL pipelines
* AWS Data Engineering architecture
* Data Lake + Data Warehouse design
* SQL analytics
* Production-style cloud data workflows

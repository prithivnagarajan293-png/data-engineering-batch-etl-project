import sys
from pyspark.sql import SparkSession
from pyspark.sql.functions import col

# Create Spark Session
spark = SparkSession.builder.appName("SalesETLJob").getOrCreate()

# Read raw CSV from S3
df = spark.read.option("header", "true").csv(
    "s3://retailmart-sales-data-prithiv/raw/orders.csv"
)

# Remove null values
df_clean = df.dropna()

# Remove duplicate rows
df_clean = df_clean.dropDuplicates()

# Write cleaned data as Parquet
df_clean.write.mode("overwrite").parquet(
    "s3://retailmart-sales-data-prithiv/processed/sales_cleaned/"
)

print("ETL Job Completed Successfully")
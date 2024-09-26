from pyspark.sql import SparkSession


spark = SparkSession.builder \
   .appName("S3 Data Read ml-latest") \
   .getOrCreate()


# Leer datos desde S3
df = spark.read.csv("s3a://tecmovielens/ml-latest/ratings.csv")
df.show()

FROM bitnami/spark:latest


USER root
COPY start-spark.sh /opt/bitnami/scripts/spark/
RUN chmod +x /opt/bitnami/scripts/spark/start-spark.sh


# Instalar AWS Hadoop libraries
RUN curl -sL https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoop-aws-3.2.0.jar -o /opt/bitnami/spark/jars/hadoop-aws-3.2.0.jar
RUN curl -sL https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.375/aws-java-sdk-bundle-1.11.375.jar -o /opt/bitnami/spark/jars/aws-java-sdk-bundle-1.11.375.jar


USER 1001
CMD ["/opt/bitnami/scripts/spark/start-spark.sh"]
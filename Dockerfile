FROM bitnami/spark:latest
USER root
COPY start-spark.sh /opt/bitnami/scripts/spark/
RUN chmod +x /opt/bitnami/scripts/spark/start-spark.sh
USER 1001
CMD ["/opt/bitnami/scripts/spark/start-spark.sh"]

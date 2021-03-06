FROM adoptopenjdk/openjdk11:jdk-11.0.10_9-slim
WORKDIR /opt

# entrypoint script
COPY entrypoint.sh /opt/
ENTRYPOINT ["/opt/entrypoint.sh"]

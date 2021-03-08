FROM adoptopenjdk/openjdk11:jdk-11.0.10_9-slim
ENV TIMEZONE=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone

VOLUME /opt/app
EXPOSE 8080

WORKDIR /opt/app
# copy the java main application
RUN mv -f ./target/*.jar /opt/app.jar 2>/dev/null; true
COPY entrypoint.sh /opt/app/
RUN chmod +x /opt/app/entrypoint.sh

ENTRYPOINT ["/opt/app/entrypoint.sh"]
#!/bin/bash

# ================================================================================
JVM_ARGS="-server -Xms2g -Xmx2g -Xmn512m -XX:MetaspaceSize=64m -XX:MaxMetaspaceSize=256m -XX:NewRatio=1 -XX:SurvivorRatio=30 -XX:+UseG1GC -XX:+PrintGCDetails -Xlog:gc:gc.log -XX:+HeapDumpOnOutOfMemoryError"
APP_PROPS="-Djava.security.egd=file:/dev/./urandom"
# SPRINGBOOT_ARGS="--loader.path=/opt/app/lib --spring.config.location=/opt/app/ --logging.config=/opt/app/logback.xml"

java "${JVM_ARGS}" "${APP_PROPS}" -jar /opt/app.jar
# java "${JVM_ARGS}" "${APP_PROPS}" -jar /opt/app.jar "${SPRINGBOOT_ARGS}"
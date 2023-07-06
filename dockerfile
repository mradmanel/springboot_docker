# Java 8
FROM openjdk:8-jdk-alpine

# Refer to Maven build -> finalName
ARG JAR_FILE=target/amsv1.jar

# cd /app
WORKDIR /app

# cp target/amsv1.jar /app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]


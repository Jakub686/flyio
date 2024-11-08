#
# Build stage
#
FROM maven:3.8.2-eclipse-temurin-17 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests

#
# Package stage
#
FROM openjdk:17-jdk-slim
COPY --from=build /target/flyio-0.0.1-SNAPSHOT.jar flyio.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","flyio.jar"]


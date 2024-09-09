# Use an OpenJDK runtime as base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
VOLUME /tmp

# Copy the packaged JAR file into the container at /app
COPY target/*.jar app.jar

# Command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Expose the port that the application runs on
EXPOSE 8080

## Stage 1: Build the application with Maven
#FROM maven:3.8.6-openjdk-17 AS build
#
## Set the working directory
#WORKDIR /app
#
## Copy the pom.xml and the source code
#COPY pom.xml .
#COPY src ./src
#
## Build the application
#RUN mvn clean install -DskipTests
#
## Stage 2: Create the runtime image with the built JAR
#FROM openjdk:17-jdk-alpine
#
## Set the working directory in the container
#WORKDIR /app
#
## Copy the JAR file from the build stage
#COPY --from=build /app/target/*.jar app.jar
#
## Command to run the application when the container starts
#ENTRYPOINT ["java", "-jar", "app.jar"]
#
## Expose the port that the application runs on
#EXPOSE 8080

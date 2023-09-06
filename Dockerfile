# Use a base image with Java already installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory into the container
COPY Amazon-Backend-0.0.1-SNAPSHOT.jar .

# Specify the command to run when the container starts
CMD ["java", "-jar", "Amazon-Backend-0.0.1-SNAPSHOT.jar"]

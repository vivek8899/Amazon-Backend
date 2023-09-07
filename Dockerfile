# Use a base image with AdoptOpenJDK 16 (or a suitable Java version)
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the root directory of your project into the container's working directory
COPY Amazon-Backend.jar .

EXPOSE 8080

# Specify the command to run when the container starts
CMD ["java", "-jar", "Amazon-Backend.jar"]


# Use a base image with AdoptOpenJDK 16 (or a suitable Java version)
FROM adoptopenjdk:16-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory into the container's working directory
COPY Amazon-Backend-0.0.1-SNAPSHOT.jar .

# Specify the command to run when the container starts
CMD ["java", "-jar", "Amazon-Backend-0.0.1-SNAPSHOT.jar"]

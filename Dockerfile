# Use an official OpenJDK runtime as a base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the war file from the Jenkins workspace into the container at /app
COPY target/web-application-war-file.war /app/

# Expose the port that your application will run on
EXPOSE 8080

# Command to run your application
CMD ["java", "-jar", "web-application-war-file.war"]

# Use the openjdk:8 as the base image
FROM openjdk:8

# Set the working directory to /app
WORKDIR /app

# Copy the WAR file into the container
COPY /var/lib/jenkins/workspace/sample-pipeline/target/web-application-war-file.war /app/

# Expose the port on which your application will run (adjust as needed)
EXPOSE 8082

# Specify the command to run your application when the container starts
ENTRYPOINT ["java", "-jar", "web-application-war-file.war"]
# ENTRYPOINT ["java", "-jar", "/app/*.war"]

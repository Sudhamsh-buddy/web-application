# Use the openjdk:8 as the base image
FROM openjdk:8

# Set the working directory to /app
WORKDIR /app

# Copy the WAR file into the container
COPY /var/lib/jenkins/.m2/repository/com/techworldwithmurali/web-application/1.0-SNAPSHOT/web-application-1.0-SNAPSHOT.war /app/web-application-war-file.war

# Expose the port on which your application will run (adjust as needed)
EXPOSE 8082

# Specify the command to run your application when the container starts
ENTRYPOINT ["java", "-jar", "/app/web-application-war-file.war"]

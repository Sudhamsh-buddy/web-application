# Use an official Tomcat runtime as a base image
FROM tomcat:9-jre11-slim

# Remove the default webapps in Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the war file into the webapps directory of Tomcat
COPY target/web-application-war-file.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port that Tomcat will run on
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

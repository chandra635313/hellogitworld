# Base image
FROM tomcat:9.0-jdk11

# Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file built by Maven
COPY target/*.war /usr/local/tomcat/webapps/

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

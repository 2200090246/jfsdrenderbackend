# Use an official Tomcat image as the base image
FROM tomcat:10.1-jdk17-temurin

# Remove the default ROOT application from Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to Tomcat's webapps directory and rename it to ROOT.war
COPY target/eduerp-backend /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

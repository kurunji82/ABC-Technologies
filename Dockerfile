# Use the official Tomcat image as the base image
FROM tomcat:9.0

# Remove the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to the Tomcat webapps directory
COPY ./target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
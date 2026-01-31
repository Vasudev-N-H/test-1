

# Use a specific version for stability
FROM tomcat:10.1-jdk21

# Optional: Restore default manager apps if you need them
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

# Deploy your application
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/


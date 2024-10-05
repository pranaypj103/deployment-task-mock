FROM tomcat:9-jre9
COPY target/devops.war /usr/local/tomcat/webapps/

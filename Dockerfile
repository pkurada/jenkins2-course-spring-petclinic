FROM tomcat:8.0.20-jre8
ADD tomcat-users.xml /usr/local/tomcat/conf


RUN mvnw package
COPY /target/petclinic.war /usr/local/tomcat/webapps/

FROM tomcat:latest

LABEL maintainer="GIIT-SOLUTIONS"

ADD ./target/LoginWebApp-1.war /usr/local/tomcat/webapps

EXPOSE 9092

CMD [ "catalina.sh", "run" ]
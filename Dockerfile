FROM tomcat:latest

LABEL maintainer="GIIT-SOLUTIONS"



EXPOSE 9092

CMD [ "catalina.sh", "run" ]
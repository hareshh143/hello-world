#FROM tomcat:latest
#RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
#COPY ./*.war /usr/local/tomcat/webapps

FROM alpine:latest
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz /opt/tomcat
RUN tar -xvf /opt/tomcat/apache-tomcat-10.0.20.tar.gz
RUN mv apache-tomcat-10.0.20.tar.gz/* /opt/tomcat
EXPOSE 8070
CMD ["/opt/tomcat/catalina.sh", "run"]

# Test Dockerfile 
# FROM dehlw:init
FROM ubuntu:14.04
COPY 10proxy /etc/apt/apt.conf.d/

RUN apt-get -qqy install git-core git tomcat6 tomcat6-admin tomcat-examples
COPY tomcat-users.xml /etc/tomcat6/tomcat-usres.xml

RUN git clone https://github.com/dehlw/test.git /gitrepo/

RUN cp /gitrepo/tc /var/lib/tomcat6/webapps/ROOT/

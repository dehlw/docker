# Test Dockerfile 
FROM ubuntu:14.04

ADD 10proxy /etc/apt/apt.conf.d/
RUN apt-get -qq update

RUN apt-get -qqy install git-core git tomcat6 tomcat6-admin tomcat6-examples
ADD tomcat-users.xml /etc/tomcat6/tomcat-usres.xml

RUN git clone https://github.com/dehlw/test.git /gitrepo/

RUN cp /gitrepo/tc/*.html /var/lib/tomcat6/webapps/ROOT/

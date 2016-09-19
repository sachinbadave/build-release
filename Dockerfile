FROM centos
MAINTAINER Sachin Badave <sachin.badave.mail@gmail.com>

RUN yum install -y wget

RUN wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.rpm
RUN yum localinstall -y jdk-8u102-linux-x64.rpm

RUN wget http://redrockdigimark.com/apachemirror/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz

RUN tar xzvf ../apache-maven-3.3.9-bin.tar.gz -C /usr

RUN mkdir /usr/app

ENV JAVA_HOME /usr/java/jdk1.8.0_102

ENV PATH /usr/apache-maven-3.3.9/bin:$PATH

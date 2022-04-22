FROM centos:7

LABEL maintainer="Ivo Woltring, ivonet.nl" description="Java 8"

RUN yum -y update \
 && yum -y install \
 		--setopt=tsflags=nodocs \
 		--disableplugin=fastestmirror \
 	epel-release \
 && yum -y install \
 	inotify-tools \
 	unzip \
 	java-1.8.0-openjdk \
 && yum clean all \
 && rm -rf /etc/ld.so.cache

ENV JAVA_HOME /etc/alternatives/jre
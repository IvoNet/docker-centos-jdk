FROM centos:7

ADD jdk-11.0.3_linux-x64_bin.tar.gz /usr/local
RUN cd /usr/local/jdk-11.0.3 \
 && alternatives --install /usr/bin/java java /usr/local/jdk-11.0.3/bin/java 2 \
 && alternatives --install /usr/bin/jar jar /usr/local/jdk-11.0.3/bin/jar 2 \
 && alternatives --install /usr/bin/javac javac /usr/local/jdk-11.0.3/bin/javac 2 \
 && alternatives --set java /usr/local/jdk-11.0.3/bin/java \
 && alternatives --set jar /usr/local/jdk-11.0.3/bin/jar \
 && alternatives --set javac /usr/local/jdk-11.0.3/bin/javac \
 && java --version

ENV JAVA_HOME /usr/local/jdk-11.0.3
ENV PATH /usr/local/jdk-11.0.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN yum -y update \
 && yum -y install \
         --setopt=tsflags=nodocs \
         --disableplugin=fastestmirror \
     epel-release \
 && yum -y install \
     inotify-tools \
     unzip \
 && yum clean all \
 && rm -rf /etc/ld.so.cache


CMD ["java", "--version"]

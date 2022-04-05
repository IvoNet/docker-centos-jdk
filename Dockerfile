FROM centos:7

RUN yum -y update \
 && yum -y install \
         --setopt=tsflags=nodocs \
         --disableplugin=fastestmirror \
     epel-release \
 && yum -y install \
     inotify-tools \
     unzip \
    java-11-openjdk \
 && yum clean all \
 && rm -rf /etc/ld.so.cache

CMD ["java", "--version"]

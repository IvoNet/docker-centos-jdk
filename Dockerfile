FROM centos:7

RUN yum -y update \
 && yum install -y https://cdn.azul.com/zulu/bin/zulu-repo-1.0.0-1.noarch.rpm \
 && yum -y install \
     --setopt=tsflags=nodocs \
     --disableplugin=fastestmirror \
     epel-release \
 && yum -y install \
     inotify-tools \
     unzip \
     zulu17-jdk \
 && yum clean all \
 && rm -rf /etc/ld.so.cache

CMD ["java", "--version"]

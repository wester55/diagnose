FROM docker.io/openshift/base-centos7:latest
MAINTAINER Sasha Segal <wester.55@gmail.com>
RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install net-tools && \
    yum clean all

# Simple startup script to avoid some issues observed with container restart
CMD ["sleep infinity"]

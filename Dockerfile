FROM centos:centos7

RUN yum update -y
RUN yum install -y epel-release
RUN yum update -y
RUN yum clean all

RUN yum -y install squid

COPY squid.conf /etc/squid/squid.conf
COPY squid-secured.conf /etc/squid/squid-secured.conf
COPY passwd /etc/squid/passwd

ENTRYPOINT ["/usr/sbin/squid", "-N", "-d", "0"]
CMD ["-f", "/etc/squid/squid.conf"]

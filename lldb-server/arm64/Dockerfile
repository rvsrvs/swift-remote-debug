FROM ubuntu:bionic
MAINTAINER Van Simmons <van.simmons@computecycles.com>

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install lldb-6.0

EXPOSE 9293

VOLUME ["/usr/lib/swift/linux"]
VOLUME ["/debug"]

COPY ./runserver.sh /

ENTRYPOINT ["/bin/bash", "/runserver.sh"]

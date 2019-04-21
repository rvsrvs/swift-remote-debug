FROM arm64v8/ubuntu:bionic
MAINTAINER Van Simmons <van.simmons@computecycles.com>

EXPOSE 9293 9294 9295 9296
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install lldb-6.0 

VOLUME ["/swift_runtime/lib", "/swift_runtime/usr/lib", "/swift_runtime/usr/bin", "/swift_debug"]

WORKDIR /swift_debug
COPY ./run.sh /
ENV LD_LIBRARY_PATH=/swift_runtime/usr/lib/swift/linux:/swift_runtime/usr/lib/aarch64-linux-gnu:/swift_runtime/lib/aarch64-linux-gnu
ENTRYPOINT ["/bin/bash", "/run.sh"]



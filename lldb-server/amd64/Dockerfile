FROM scratch
MAINTAINER Van Simmons <van.simmons@computecycles.com>

EXPOSE 9293

VOLUME ["/lib", "/usr/lib", "/debug"]

WORKDIR /debug
ENV LD_LIBRARY_PATH=/usr/lib/swift/linux
ENTRYPOINT ["/lib/x86_64-linux-gnu/ld-2.27.so"]
CMD ["/usr/lib/llvm-6.0/bin/lldb-server", "platform", "--listen", "*:9293", "--server"]


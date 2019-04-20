FROM arm64v8/ubuntu:bionic
MAINTAINER Van Simmons <van.simmons@computecycles.com>

EXPOSE 9293 9294 9295 9296

VOLUME ["/swift_runtime/lib", "/swift_runtime/usr/lib", "/swift_runtime/usr/bin", "/swift_debug"]

WORKDIR /swift_debug
ENV LD_LIBRARY_PATH=/swift_runtime/usr/lib/swift/linux:/swift_runtime/usr/lib/aarch64-linux-gnu:/swift_runtime/lib/aarch64-linux-gnu
ENTRYPOINT ["/swift_runtime/usr/lib/llvm-6.0/bin/lldb-server", "platform", "--listen", "*:9293", "--server", "--min-gdbserver-port", "9294", "--max-gdbserver-port", "9296"]


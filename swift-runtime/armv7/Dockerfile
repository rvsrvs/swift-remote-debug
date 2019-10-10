FROM scratch
ADD ./lib /lib
VOLUME /lib
ADD ./usr/lib /usr/lib
VOLUME /usr/lib
ADD ./usr/bin /usr/bin
VOLUME /usr/bin
ENV LD_LIBRARY_PATH=/usr/lib/swift/linux
ENTRYPOINT ["/lib/ld-linux-armhf.so.3"]
CMD ["/usr/bin/helloworld"]




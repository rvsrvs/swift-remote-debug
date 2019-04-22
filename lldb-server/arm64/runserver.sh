#!/bin/sh
docker pull cscix65g/swift-runtime:arm64-latest
if [ ! "$(docker ps --all -q -f name=swift_runtime)" ]; then
    echo "Launching swift_runtime"
    docker run --name swift_runtime -d cscix65g/swift-runtime:arm64-latest
    docker logs swift_runtime
fi
docker run -d --rm --privileged --name lldb_server -p 9293:9293 -p 9294:9294 -p 9295:9295 -p 9296:9296 -v /tmp:/debug --volumes-from swift_runtime  cscix65g/lldb-server:arm64-latest

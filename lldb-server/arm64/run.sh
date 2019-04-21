#!/bin/bash
cd /swift_debug && /usr/lib/llvm-6.0/bin/lldb-server platform --listen "*:9293" --server --min-gdbserver-port 9294 --max-gdbserver-port 9296

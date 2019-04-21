#!/bin/bash
cd /debug && /usr/lib/llvm-6.0/bin/lldb-server platform --listen "*:9293" --server

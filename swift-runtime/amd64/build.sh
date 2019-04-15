rm -rf swift-runtime || true
mkdir swift-runtime
pushd swift-runtime
tar xvf ../runtime-libs.tar.gz
mkdir -p usr/bin
cp ../helloworld usr/bin
cp ../ld-2.27.so lib/x86_64-linux-gnu/ld-2.27.so
ls -s lib/ld-linux-x86_64.so.1 lib/x86_64-linux-gnu/ld-2.27.so
rm -rf etc
cp ../Dockerfile .
docker build --tag cscix65g/swift-runtime:amd64-latest .
popd
rm -rf swift-runtime

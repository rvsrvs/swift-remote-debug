rm -rf swift-runtime || true
mkdir swift-runtime
pushd swift-runtime
tar xvf ../runtime-libs.tar.gz
mkdir -p usr/bin
cp ../helloworld usr/bin
rm -rf etc
cp ../Dockerfile .
docker build --tag cscix65g/swift-runtime:amd64-latest .
popd
rm swift-runtime



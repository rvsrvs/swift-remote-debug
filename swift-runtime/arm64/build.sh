rm -rf swift-runtime || true
mkdir swift-runtime
pushd swift-runtime
tar xvf ../runtime-libs.tar.gz
popd
docker build --tag cscix65g/swift-runtime:arm64-latest .
rm -rf swift-runtime

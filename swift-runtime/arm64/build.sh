rm -rf usr lib etc
tar xvf sdk-libs.tar.gz 
tar xvf toolchain-libs.tar.gz 
docker build --tag cscix65g/swift-runtime:arm64-latest .

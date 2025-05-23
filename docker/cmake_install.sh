apt-get install make gcc libssl-dev
export OPENSSL_ROOT_DIR=/usr/include/openssl
mkdir cmake
tar -xzvf ./downloads/cmake-4.0.2.tar.gz 
cd cmake-4.0.2 
chmod +x configure
./configure --prefix=/home/arm_mlops_docker/cmake \
        -- -DCMAKE_USE_OPENSSL=OFF \
        -DOPENSSL_ROOT_DIR=/usr \
        -DOPENSSL_INCLUDE_DIR=/usr/include \
        -DOPENSSL_CRYPTO_LIBRARY=/usr/lib/x86_64-linux-gnu/libcrypto.so \
        -DOPENSSL_SSL_LIBRARY=/usr/lib/x86_64-linux-gnu/libssl.so
make 
make install 
cd ..
rm -rf cmake-4.0.2 
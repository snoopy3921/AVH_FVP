#!/bin/bash
if [ ! -d "./downloads" ]; then
    mkdir downloads
    cp ../downloads/* ./downloads
fi

if [ ! -d "../avh-linux-x86" ]; then
    tar -xvf ../downloads/avh-linux-x86_11.28_32_Linux64.tgz -C ..
fi

docker rm --force arm_mlops_docker

docker build -t arm_mlops_docker:latest . # > build.log 2>&1

# rm -rf ./downloads

docker run -d\
    --name arm_mlops_docker \
    -u root \
    -v $(readlink -f ../):/home/arm_mlops_docker/workspace \
    --platform=linux/amd64 \
    arm_mlops_docker:latest \
    sleep infinity

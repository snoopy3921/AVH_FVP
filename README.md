To build docker:
```
cd docker
./build_docker.sh
```

If u have already docker image pulled, run docker container:
```
cd docker

docker run -d\
    --name arm_mlops_docker \
    -u root \
    -v $(readlink -f ../):/home/arm_mlops_docker/workspace \
    --platform=linux/amd64 \
    arm_mlops_docker:latest \
    sleep infinity
```

Inside docker container terminal:

```
su arm_mlops_docker

# Build exectable program file
cpackget init https://www.keil.com/pack/index.pidx
cbuild workspace/Hello/Hello.csolution.yml --packs --toolchain GCC --update-rte
```

After these steps, file ./Hello/out/Hello/CS300/Release/Hello.elf will be apeared in Host machine. Run commands in host system:

```
./avh-linux-x86/bin/FVP_Corstone_SSE-300_Ethos-U65 -a ./Hello/out/Hello/CS300/Release/Hello.elf
```
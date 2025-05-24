Download and extract all file from this [link](https://www.dropbox.com/scl/fo/585uxv64impvhwzo2lc1v/AB-6F2ezTrPUFsbaX1HvUGw?rlkey=ijy1b9tlkn485y57l3y93v7n5&st=m70tvwb6&dl=0) to ``downloads`` folder



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

![alt text](<Screenshot from 2025-05-24 03-39-19.png>)

Result demo a Hello program

![alt text](<Screenshot from 2025-05-24 03-41-01.png>)
tar -xvf ./downloads/cmsis-toolbox-linux-amd64.tar.gz 
chmod +x ./cmsis-toolbox-linux-amd64/bin/cpackget

apt-get install -y xterm

echo 'export AC6_TOOLCHAIN_6_20_1=/home/arm_mlops_docker/ArmCompilerforEmbedded6.20/bin' >> /home/arm_mlops_docker/.bashrc
echo 'export GCC_TOOLCHAIN_12_3_1=/home/arm_mlops_docker/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi/bin' >> /home/arm_mlops_docker/.bashrc
echo 'export CMSIS_PACK_ROOT=/home/arm_mlops_docker/packs' >> /home/arm_mlops_docker/.bashrc
echo 'export CMSIS_COMPILER_ROOT=/home/arm_mlops_docker/cmsis-toolbox-linux-amd64/etc' >> /home/arm_mlops_docker/.bashrc
echo 'export PATH=/home/arm_mlops_docker/cmake/bin:$PATH' >> /home/arm_mlops_docker/.bashrc
echo 'export PATH=/home/arm_mlops_docker/cmsis-toolbox-linux-amd64/bin:$PATH' >> /home/arm_mlops_docker/.bashrc
echo 'AC6_TOOLCHAIN_6_20_1="/home/arm_mlops_docker/ArmCompilerforEmbedded6.20/bin"' >> /etc/environment
echo 'GCC_TOOLCHAIN_12_3_1="/home/arm_mlops_docker/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi/bin"' >> /etc/environment
echo 'CMSIS_PACK_ROOT="/home/arm_mlops_docker/packs"' >> /etc/environment
echo 'CMSIS_COMPILER_ROOT="/home/arm_mlops_docker/cmsis-toolbox-linux-amd64/etc"' >> /etc/environment
echo 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin//home/arm_mlops_docker/cmsis-toolbox-linux-amd64/bin:/home/arm_mlops_docker/cmake/bin:/home/arm_mlops_docker/ninja:/home/arm_mlops_docker/ArmCompilerforEmbedded6.20/bin"' >> /etc/environment
export GCC_TOOLCHAIN_12_3_1=/home/arm_mlops_docker/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi/bin
export AC6_TOOLCHAIN_6_20_1=/home/arm_mlops_docker/ArmCompilerforEmbedded6.20/bin
export CMSIS_PACK_ROOT=/home/arm_mlops_docker/packs
export CMSIS_COMPILER_ROOT=/home/arm_mlops_docker/cmsis-toolbox-linux-amd64/etc
export PATH=/home/arm_mlops_docker/cmsis-toolbox-linux-amd64/bin:$PATH
export PATH=/home/arm_mlops_docker/cmake/bin:$PATH
export PATH=/home/arm_mlops_docker/ninja:$PATH
chown -R arm_mlops_docker /home/arm_mlops_docker


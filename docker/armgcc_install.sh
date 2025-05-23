apt-get update
apt-get install -y bzip2
tar -xvf ./downloads/arm-gnu-toolchain-x86_64-arm-none-eabi.tar.bz2 -C /home/arm_mlops_docker
chown -R arm_mlops_docker ./arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi/

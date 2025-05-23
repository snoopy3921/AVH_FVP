FROM --platform=linux/amd64 ubuntu:latest as base

RUN  apt-get update && apt-get install -y wget sudo software-properties-common build-essential && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash arm_mlops_docker
WORKDIR /home/arm_mlops_docker
ARG DEBIAN_FRONTEND=noninteractive

# Copy local files into the container (For those who are in Russia)))
RUN mkdir downloads
COPY downloads/* /home/arm_mlops_docker/downloads

# Install Cmake 
ADD cmake_install.sh ./cmake_install.sh
RUN chmod +x ./cmake_install.sh && ./cmake_install.sh

# Install arm embedded toolchain
ADD armclang_install.sh ./armclang_install.sh
RUN chmod +x ./armclang_install.sh && ./armclang_install.sh

# Install gcc toolchain
ADD armgcc_install.sh ./armgcc_install.sh
RUN chmod +x ./armgcc_install.sh && ./armgcc_install.sh

# Install Arm Fixed virtual platform
ADD avh-fvp_install.sh ./avh-fvp_install.sh
RUN chmod +x ./avh-fvp_install.sh && ./avh-fvp_install.sh

# Install Ninja 
ADD ninja_install.sh ./ninja_install.sh
RUN chmod +x ./ninja_install.sh && ./ninja_install.sh

# Install Cmsis toolbox 
ADD cmsistoolbox_install.sh ./cmsistoolbox_install.sh
RUN chmod +x ./cmsistoolbox_install.sh && ./cmsistoolbox_install.sh


FROM base

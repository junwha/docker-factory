FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

ENV DEBIAN_FRONTEND noninteractive
ENV TORCH_CUDA_ARCH_LIST "8.0"
ENV CUDA_HOME /usr/local/cuda

RUN apt-get update -y
# Build tools
RUN apt-get install -y gcc-12 g++-12 ninja-build cmake build-essential autoconf libtool automake
# Utils
RUN apt-get install -y vim git bzip2 tmux wget tar
# Conda
RUN wget https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh && \
    chmod +x ./Anaconda3-2024.10-1-Linux-x86_64.sh && \
    ./Anaconda3-2024.10-1-Linux-x86_64.sh -b && \
    rm ./Anaconda3-2024.10-1-Linux-x86_64.sh
ENV PATH /root/anaconda3/bin:$PATH
RUN conda init && \
    conda create -n py38 python=3.8 -y && \
    echo "conda activate py38" >> ~/.bashrc

# SSH
RUN apt-get install -y ssh openssh-server
RUN mkdir -p /var/run/sshd
RUN echo "root:root" | chpasswd
RUN echo "Port 22" >> /etc/ssh/sshd_config
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN service ssh start
EXPOSE 22

# detrex
RUN . ~/.bashrc && \
    conda activate py38 && \
    pip install torch

ENV CUDA_TOOLKIT_ROOT_DIR $CUDA_HOME
ENV LD_LIBRARY_PATH $CUDA_HOME/extras/CUPTI/lib64:$LD_LIBRARY_PATH
ENV LIBRARY_PATH $CUDA_HOME/lib64:$LIBRARY_PATH
ENV LD_LIBRARY_PATH $CUDA_HOME/lib64;$LD_LIBRARY_PATH
ENV CFLAGS="-I$CUDA_HOME/include $CFLAGS"

RUN . ~/.bashrc && \
    conda activate py38 && \
    git clone https://github.com/IDEA-Research/detrex.git && \
    cd detrex && \
    git submodule init && \
    git submodule update && \
    python -m pip install -e detectron2 && \
    pip install -e .

RUN apt-get install -y libgl-dev xcb



https://github.com/YanjingLi0202/Bi-ViT
https://github.com/Phuoc-Hoan-Le/BinaryViT
https://github.com/VL-Group/SI-BiViT







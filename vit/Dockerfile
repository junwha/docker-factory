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
RUN sed -i "s/PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config
RUN sed "s@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g" -i /etc/pam.d/sshd
RUN service ssh start
EXPOSE 22

# ViT
RUN git clone https://github.com/lucidrains/vit-pytorch
RUN . ~/.bashrc && \
    conda activate py38 && \
    cd vit-pytorch && pip install -e .

# ViT 1.58b
RUN git clone https://github.com/DLYuanGod/ViT-1.58b

# BitNet
RUN export CUDA_VISIBLE_DEVICES=0 && \
    apt-get install -y gfortran && \
    . ~/.bashrc && \
    pip install packaging && \
    git clone https://github.com/kyegomez/BitNet 
    # && \
    # cd BitNet && python3 setup.py build_ext --inplace
# pip install einops zetascale==2.1.6 && \

# Run sshd
CMD ["/usr/sbin/sshd", "-D"]



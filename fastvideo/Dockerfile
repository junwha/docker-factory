FROM junwha/dslice-base-nvidia:torch-2.4.0-24.06-py3-nsight2025

RUN pip3 install --ignore-installed blinker==1.9.0

RUN git clone https://github.com/hao-ai-lab/FastVideo fastvideo && \
    cd fastvideo && \
    ./env_setup.sh fastvideo || echo "good"

RUN apt-get -y upgrade

RUN apt -y install gcc-11 g++-11 && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 100 --slave /usr/bin/g++ g++ /usr/bin/g++-11 && \
    apt -y install clang-11

RUN cd fastvideo/csrc/sliding_tile_attention && \
    export CUDA_HOME=/usr/local/cuda-12.5 && \
    export PATH=${CUDA_HOME}/bin:${PATH} && \
    export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH  && \
    git submodule update --init --recursive && \
    python setup.py install

RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
    apt-get -y update && \
    apt-get -y install --only-upgrade libstdc++6
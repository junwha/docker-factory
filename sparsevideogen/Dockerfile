FROM junwha/dslice-base-nvidia:torch-2.4.0-24.06-py3-nsight2025

RUN apt-get update -y && apt-get -y install gcc g++ clang-12 clang++-12

RUN GIT_LFS_SKIP_SMUDGE=1 git clone https://github.com/svg-project/Sparse-VideoGen

ENV TORCH_CUDA_ARCH_LIST 8.0

RUN cd Sparse-VideoGen && \
    sed -i '/cu124/d' requirements.txt && \
    sed -i -E 's/(cu12)==12\.[0-9.]+/\1/' requirements.txt && \
    pip install -r requirements.txt && \
    pip install flash-attn --no-build-isolation

RUN apt-get upgrade -y cmake

# RUN cd Sparse-VideoGen && \
#     GIT_LFS_SKIP_SMUDGE=1 git clone --recursive https://github.com/svg-project/Sparse-VideoGen && \
#     cd svg/kernels && \
#     sed -i "s|/ssd/data/xihaocheng/Hunyuan/I2VSparse/kernels/build/|/workspace/Sparse-VideoGen/svg/kernels/build|" test/* && \
#     bash setup.sh

# RUN python3 -c "import fused_layer_norm_cuda"


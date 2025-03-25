FROM junwha/dslice-base-torch:py3.10-torch2.4.1

RUN git clone https://github.com/NUS-HPC-AI-Lab/VideoSys && \
    cd VideoSys && pip install -e .

RUN pip install rotary_embedding_torch torch_tb_profiler tensorboardX

RUN apt-get update -y && apt-get install -y software-properties-common
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub 
RUN add-apt-repository -y "deb https://developer.download.nvidia.com/devtools/repos/ubuntu22.04/$(dpkg --print-architecture)/ /"
RUN apt-get install -y nsight-systems-2024.6.2
RUN apt-get install -y mesa-utils x11-apps
RUN apt-get install -y freeglut3-dev libglu1-mesa-dev mesa-common-dev libxkbfile-dev libgl1-mesa-glx

ENV LIBGL_DRIVERS_PATH /usr/lib/x86_64-linux-gnu/dri
ENV LIBGL_ALWAYS_INDIRECT 1

# RUN wget https://developer.nvidia.com/downloads/assets/tools/secure/nsight-systems/2025_1/nsight-systems-2025.1.1_2025.1.1.103-1_amd64.deb
# RUN apt-get update -y && \
#     dpkg -i nsight-systems-2025.1.1_2025.1.1.103-1_amd64.deb || \
#     apt-get install -y --fix-broken && \
#     dpkg -i nsight-systems-2025.1.1_2025.1.1.103-1_amd64.deb


# COPY download.py /

# RUN apt-get install -y x11-apps mesa-utils libxcb*

# RUN echo '\
# from videosys import CogVideoXConfig, LatteConfig, OpenSoraConfig, OpenSoraPlanConfig, VchitectConfig, VideoSysEngine\n\
# config = CogVideoXConfig("THUDM/CogVi deoX-2b", num_gpus=1)\n\
# engine = VideoSysEngine(config)\n\
# del engine\n\
# config = LatteConfig("maxin-cn/Latte-1", num_gpus=1)\n\
# engine = VideoSysEngine(config)\n\
# del engine\n\
# config = OpenSoraConfig(num_sampling_steps=30, cfg_scale=7.0, num_gpus=1)\n\
# engine = VideoSysEngine(config)\n\
# del engine\n\
# config = OpenSoraPlanConfig(version="v120", transformer_type="29x480p", num_gpus=1)\n\
# engine = VideoSysEngine(config)\n\
# del engine\n\
# config = VchitectConfig("Vchitect/Vchitect-2.0-2B", num_gpus=1)\n\
# engine = VideoSysEngine(config)\n\
# del engine\n' > download.py 
# RUN python download.py

# 
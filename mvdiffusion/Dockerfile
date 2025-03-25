FROM junwha/dslice-base-torch:py3.10-torch2.4.1

RUN git clone https://github.com/Tangshitao/MVDiffusion

RUN pip install accelerate==1.3.0 \
einops==0.8.1 \
transformers==4.49.0 \
pytorch-lightning==2.5.0 \
opencv-python==4.11.0.86 \
protobuf==5.29.3 \
wrapt==1.17.2 \
google==3.0.0 \
googleapis-common-protos==1.69.0 \
PyExifTool==0.5.6 \
diffusers==0.32.2

RUN apt-get update -y && apt-get install -y software-properties-common
RUN apt-get install -y mesa-utils x11-apps
RUN apt-get install -y freeglut3-dev libglu1-mesa-dev mesa-common-dev libxkbfile-dev libgl1-mesa-glx



# RUN pip install accelerate==0.23.0 \
# einops==0.6.1 \
# diffusers==0.16.1 \
# transformers==4.28.1 \
# pytorch-lightning==1.5.0 \
# opencv-python==4.7.0.72 \
# protobuf==3.20.3 \
# wrapt==1.15.0 \
# google==3.0.0 \
# googleapis-common-protos==1.59.0 \
# huggingface_hub==0.20.2 \
# PyExifTool==0.5.6
# numpy==1.23.5 \
# torch==2.0.0

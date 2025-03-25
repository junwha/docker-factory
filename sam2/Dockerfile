FROM junwha/dslice-base-torch:py3.10-torch2.4.1

RUN git clone https://github.com/facebookresearch/sam2.git
RUN cd sam2 && pip install -e .

RUN cd sam2 && cd checkpoints && \
    ./download_ckpts.sh && \
    cd ..

RUN apt-get update -y && apt-get install -y ffmpeg

RUN wget -O sam2/truck.jpg https://t3.ftcdn.net/jpg/06/48/43/62/360_F_648436265_aTw8qng7ViOMKkUBm1Pkvz5xaST4W2W1.jpg

RUN git clone https://github.com/yangchris11/samurai

RUN cd samurai/sam2 && pip install -e . && pip install -e ".[notebooks]"

RUN rm -rf samurai/sam2/checkpoints && ln -s /sam2/checkpoints /samurai/sam2/checkpoints

RUN pip install matplotlib==3.7 tikzplotlib jpeg4py opencv-python lmdb pandas scipy loguru


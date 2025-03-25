FROM junwha/fastvideo

RUN GIT_LFS_SKIP_SMUDGE=1 git clone https://github.com/svg-project/Sparse-VideoGen
RUN cd Sparse-VideoGen && \
    sed -i '/cu124/d' requirements.txt && \
    pip install -r requirements.txt && \
    pip install flash-attn --no-build-isolation

# RUN cd Sparse-VideoGen && \
#     git clone --recursive https://github.com/svg-project/Sparse-VideoGen && \
# #         cd svg/kernels && bash setup.sh

FROM junwha/dslice-base-torch:py3.10-torch2.4.1

RUN git clone https://github.com/ByeongHyunPak/hiwyn && cd hiwyn && pip install -e .

RUN pip install diffusers==0.32.1 transformers==4.47.1 jupyter notebook

RUN cd hiwyn && git pull

RUN pip install huggingface_hub

RUN cd hiwyn && python3 main.py --model "MultiDiffusion" --hf_key "DeepFloyd/IF-I-M-v1.0" --prompt "dump" --hw 64 64 --steps 1

# RUN cd hiwyn && python3 main.py --model "MultiDiffusion" --hf_key "stabilityai/stable-diffusion-2-1-base" --prompt "dump" --hw 512 512 --steps 1

# RUN cd hiwyn && python3 main.py --model "MultiDiffusion" --hf_key "stabilityai/stable-diffusion-2-base" --prompt "dump" --hw 512 512 --steps 1

FROM junwha/dslice-base-torch:py3.10-torch2.4.1

RUN apt update -y && apt install -y aria2 git git-lfs unzip ffmpeg

RUN pip install -q tqdm==4.66.5 numpy==1.26.3 imageio==2.35.1 imageio-ffmpeg==0.5.1 xformers==0.0.27.post2 diffusers==0.30.1 moviepy==1.0.3 transformers==4.44.2 accelerate==0.33.0 sentencepiece==0.2.0 pillow==9.5.0 runpod

RUN git clone https://github.com/THUDM/CogVideo && \
    cd CogVideo && pip install -r requirements.txt

RUN aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/scheduler/scheduler_config.json -d /CogVideo/cogvideox-5b/scheduler/ -o scheduler_config.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/text_encoder/config.json -d /CogVideo/cogvideox-5b/text_encoder/ -o config.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/resolve/main/text_encoder/model-00001-of-00002.safetensors -d /CogVideo/cogvideox-5b/text_encoder/ -o model-00001-of-00002.safetensors && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/resolve/main/text_encoder/model-00002-of-00002.safetensors -d /CogVideo/cogvideox-5b/text_encoder/ -o model-00002-of-00002.safetensors && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/text_encoder/model.safetensors.index.json -d /CogVideo/cogvideox-5b/text_encoder/ -o model.safetensors.index.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/tokenizer/added_tokens.json -d /CogVideo/cogvideox-5b/tokenizer -o /added_tokens.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/tokenizer/special_tokens_map.json -d /CogVideo/cogvideox-5b/tokenizer/ -o special_tokens_map.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/resolve/main/tokenizer/spiece.model -d /CogVideo/cogvideox-5b/tokenizer/ -o spiece.model && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/tokenizer/tokenizer_config.json -d /CogVideo/cogvideox-5b/tokenizer/ -o tokenizer_config.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/transformer/config.json -d /CogVideo/cogvideox-5b/transformer/ -o config.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/resolve/main/transformer/diffusion_pytorch_model-00001-of-00002.safetensors -d /CogVideo/cogvideox-5b/transformer/ -o diffusion_pytorch_model-00001-of-00002.safetensors && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/resolve/main/transformer/diffusion_pytorch_model-00002-of-00002.safetensors -d /CogVideo/cogvideox-5b/transformer/ -o diffusion_pytorch_model-00002-of-00002.safetensors && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/transformer/diffusion_pytorch_model.safetensors.index.json -d /CogVideo/cogvideox-5b/transformer/ -o diffusion_pytorch_model.safetensors.index.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/vae/config.json -d /CogVideo/cogvideox-5b/vae/ -o config.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/resolve/main/vae/diffusion_pytorch_model.safetensors -d /CogVideo/cogvideox-5b/vae/ -o diffusion_pytorch_model.safetensors && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/configuration.json -d /CogVideo/cogvideox-5b/ -o configuration.json && \
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/vdo/CogVideoX-5b/raw/main/model_index.json -d /CogVideo/cogvideox-5b/ -o model_index.json

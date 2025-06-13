#!/bin/bash

# Set default root path
ROOT=${1:-"/workspace"}

# Clone custom node (only if it doesn't exist)
cd "$ROOT/ComfyUI/custom_nodes"
if [ ! -d "ComfyUI-Inpaint-CropAndStitch" ]; then
  git clone https://github.com/lquesada/ComfyUI-Inpaint-CropAndStitch
fi

# Download Models
CHECKPOINTS="$ROOT/ComfyUI/models/checkpoints"
VAE="$ROOT/ComfyUI/models/vae"
TEXT_ENCODERS="$ROOT/ComfyUI/models/text_encoders"
DIFFUSION_MODELS="$ROOT/ComfyUI/models/diffusion_models"

# hello-world
cd "$CHECKPOINTS"
wget -c --no-clobber https://huggingface.co/Comfy-Org/stable-diffusion-v1-5-archive/resolve/main/v1-5-pruned-emaonly-fp16.safetensors

# realViz
wget -c --no-clobber https://huggingface.co/frankjoshua/realvisxlV50_v50LightningBakedvae/resolve/main/realvisxlV50_v50LightningBakedvae.safetensors

# inpainting
wget -c --no-clobber https://huggingface.co/XuminYu/example_safetensors/resolve/88a8898da43a2ea461d5976dc2f249809e21c4bf/checkpoints/Juggernaut%20XL%20inpainting.safetensors

# Hi_Dream-dev - vae
cd "$VAE"
wget -c --no-clobber https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/vae/ae.safetensors

# Hi_Dream-dev - text_encoders
cd "$TEXT_ENCODERS"
wget -c --no-clobber https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/text_encoders/clip_l_hidream.safetensors
wget -c --no-clobber https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/text_encoders/clip_g_hidream.safetensors
wget -c --no-clobber https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/text_encoders/t5xxl_fp8_e4m3fn_scaled.safetensors
wget -c --no-clobber https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/text_encoders/llama_3.1_8b_instruct_fp8_scaled.safetensors

# Hi_Dream-dev - diffusion_models
cd "$DIFFUSION_MODELS"
wget -c --no-clobber https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/diffusion_models/hidream_i1_dev_fp8.safetensors

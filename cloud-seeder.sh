#!/bin/bash

# Set default root path
ROOT="/workspace"

# Clone custom node
cd "$ROOT/ComfyUI/custom_nodes"
git clone https://github.com/lquesada/ComfyUI-Inpaint-CropAndStitch

# Download Models
cd "$ROOT/ComfyUI/models"

## hello-world
cd "$ROOT/ComfyUI/models/checkpoints"
wget https://huggingface.co/Comfy-Org/stable-diffusion-v1-5-archive/resolve/main/v1-5-pruned-emaonly-fp16.safetensors

## realViz
wget https://huggingface.co/frankjoshua/realvisxlV50_v50LightningBakedvae/resolve/main/realvisxlV50_v50LightningBakedvae.safetensors

## inpainting
wget https://huggingface.co/XuminYu/example_safetensors/resolve/88a8898da43a2ea461d5976dc2f249809e21c4bf/checkpoints/Juggernaut%20XL%20inpainting.safetensors

## Hi_Dream-dev
cd "$ROOT/ComfyUI/models/vae"
wget https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/vae/ae.safetensors

cd "$ROOT/ComfyUI/models/text_encoders"
wget https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/text_encoders/clip_l_hidream.safetensors
wget https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/text_encoders/clip_g_hidream.safetensors
wget https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/text_encoders/t5xxl_fp8_e4m3fn_scaled.safetensors
wget https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/text_encoders/llama_3.1_8b_instruct_fp8_scaled.safetensors

cd "$ROOT/ComfyUI/models/diffusion_models"
wget https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/diffusion_models/hidream_i1_dev_fp8.safetensors

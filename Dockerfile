FROM runpod/worker-comfyui:5.8.6-base

RUN wget -q -O /comfyui/models/unet/fluxedUpFluxNSFW_71FP16.safetensors \
      "https://huggingface.co/innzare/fluxedup/resolve/main/fluxedUpFluxNSFW_71FP16.safetensors"

RUN wget -q -O /comfyui/models/clip/t5xxl_fp8_e4m3fn.safetensors \
      "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn.safetensors" \
 && wget -q -O /comfyui/models/clip/clip_l.safetensors \
      "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors"

RUN wget -q -O /comfyui/models/vae/ae.safetensors \
      "https://huggingface.co/StableDiffusionVN/Flux/resolve/main/Vae/flux_vae.safetensors"

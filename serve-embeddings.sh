#!/bin/zsh
# LustLabs embedding server — matches apps/api/.env
# (EMBEDDING_API_FORMAT=openai, model BAAI/bge-base-en-v1.5, base http://localhost:11434/v1)
# --gpu-memory-utilization is CPU RAM here (CPU backend quirk); bge-base needs ~1GB
exec /Users/simongatenby/Code/vllm/.venv/bin/vllm serve BAAI/bge-base-en-v1.5 \
  --runner pooling \
  --gpu-memory-utilization 0.10 \
  --max-model-len 512 \
  --host 0.0.0.0 \
  --port 11434

#!/bin/bash
export OLLAMA_API_BASE=http://127.0.0.1:11434
ollama start &
ollama list      ## list downloaded models
aider --model ollama/qwen2.5-coder --no-auto-commits --no-gitignore -f COMMANDS

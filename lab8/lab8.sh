#!/bin/bash
export OLLAMA_API_BASE=http://127.0.0.1:11434
ollama start &
ollama list      ## list downloaded models
aider --model ollama/gemma3:1b --no-auto-commits --no-gitignore --yes-always -m "/ask could you give me a summary of this transcript?" GTC-Paris-Keynote-VivaTech-2025.en.vtt

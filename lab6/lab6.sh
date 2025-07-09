#!/bin/bash
export OLLAMA_API_BASE=http://127.0.0.1:11434
ollama start &
ollama list      ## list downloaded models
## 1. Checkout git repo for reverse engineering
git clone https://github.com/google-gemini/gemini-fullstack-langgraph-quickstart.git
cp ../.env gemini-fullstack-langgraph-quickstart/.env
cd gemini-fullstack-langgraph-quickstart
aider --model ollama/gemma3:1b --no-auto-commits --no-gitignore -m "/ask could you give me a high-level overview of this git repository?"
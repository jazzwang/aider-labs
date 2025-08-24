#!/bin/bash
export OLLAMA_API_BASE=http://127.0.0.1:11434
ollama start 2>&1 >> /tmp/ollama-server.log &
ollama list      ## list downloaded models
aider --model ollama/gemma3:1b --no-auto-commits --no-gitignore \
	-m "/ask could you give me a summary of this transcript?" \
	--chat-history-file GTC-Paris-Keynote-VivaTech-2025.en.md\
	GTC-Paris-Keynote-VivaTech-2025.en.txt

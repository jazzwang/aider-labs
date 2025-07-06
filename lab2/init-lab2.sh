#!/bin/bash

if ! which ollama > /dev/null; then                ## save some time if ollama was already installed
  echo "Installing Ollama ..."
  curl -fsSL https://ollama.com/install.sh | sh
fi
echo "Starting Ollama Server  ..."
ollama start &
sleep 10
echo "Pulling Gemma 3 1B model file ..."
ollama pull gemma3:1b
if ! which aider > /dev/null; then                ## save some time if aider was already installed
  echo "Installing Aider (using pip) ..."
  python -m pip install aider-install
  export PATH=$PATH:~/.local/bin
  aider-install
fi
aider --version

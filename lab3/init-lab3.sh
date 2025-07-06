#!/bin/bash

echo "Installing Ollama ..."
if ! which ollama > /dev/null; then                ## save some time if ollama was already installed
  curl -fsSL https://ollama.com/install.sh | sh
fi
ollama start &
ollama pull gemma3:1b
echo "Installing Aider (using pip) ..."
if ! which aider > /dev/null; then                ## save some time if aider was already installed
  python -m pip install aider-install
  aider-install
fi
aider --version
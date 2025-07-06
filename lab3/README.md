# Running Aider and Ollama on Github Codespaces

## Step 1: install Ollama and Aider

- run `init-lab3.sh` to install ollama and aider.
- the script also start ollama server and pull [Google Gemma 3 1B model](https://ollama.com/library/gemma3:1b) (815MB)

### Hands-On Lab

- Copy command bellow and paste into `Terminal`

```
cd lab3
./init-lab3.sh
```

### Example Output

```bash
@jazzwang ➜ /workspaces/aider-labs (main) $ cd lab3
@jazzwang ➜ /workspaces/aider-labs/lab3 (main) $ ./init-lab3.sh
```

Reference:

- Install Aider - https://aider.chat/docs/install.html
- Install Ollama - https://github.com/ollama/ollama?tab=readme-ov-file#linux
- Ollama Gemma 3 1B model card - https://ollama.com/library/gemma3:1b

## Step 2: run Aider to use Gemma 3 1B model

### Hands-On Lab

```
aider --model ollama/gemma3:1b
```

### Example Output

```bash
@jazzwang ➜ /workspaces/aider-labs/lab3 (main) $ aider --model ollama/gemma3:1b
────────────────────────────────────────────────────────────────────────────
^B[GIN] 2025/07/06 - 03:56:46 | 200 |  263.628592ms |       127.0.0.1 | POST     "/api/show"
Aider v0.85.1
Model: ollama/gemma3:1b with whole edit format
Git repo: ../.git with 7 files
Repo-map: using 4096.0 tokens, auto refresh
```
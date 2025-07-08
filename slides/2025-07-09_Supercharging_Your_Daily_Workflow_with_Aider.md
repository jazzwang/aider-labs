---
presentation:
  theme: night.css
  width: 1920
  height: 1080
  slideNumber: true
  hideAddressBar: true
  history: true
---

<style>
.reveal code { color: #e7ad52; }
.reveal strong, .reveal b { color: #ffccff; }
.reveal em { color: #ccff99; }
quote { color: #e7ad52; }
</style>

<!-- slide -->

## Supercharging Your Daily Workflow <br/> with `Aider` and `Local LLMs`

|||
|---|---|
| <br/><h4>AI Sharing sessions<p/> 2025-07-09 @ Taipei City, Taiwan</h4> <br/>By [Jazz Yao-Tsung Wang](https://jazzwang.github.io/cv/) <br/>Sr. Director of Engineering, TAO Digital<br/>Chairman, Taiwan Data Engineering Association | ![Jazz Wang](https://jazzwang.github.io/cv/assets/images/profile.jpg)|

<!-- slide -->

## Agenda

<hr/>

<table><tr>
<td>

- What is Aider?
- What is Ollama?
- Why do we need to use local LLM?
- Install Aider on different platform
  - Google Colab / Cloud Shell
  - Github Codespaces
  - local Windows machine
- Switch between LLM models
  - Local LLM: Ollama
    - Google Gemma 3 1B
  - Public Free LLM
    - Google Gemini 2.5 Flash
- How to request Google Gemini API key?

</td>
<td>

- Known Use Cases that I use Aider:
  - Reverse Engineering
    - create high-level overview
    - create sequence diagram
  - Meeting Summary
    - MS Teams Live Caption (JSON)
    - MS Stream Transcript file (WebVTT)
  - Monthly Team Achievement Summary
    - from Jira JQL export CSV file
  - rewrite program:
    - from Shell Script to Python script
    - migrate from Selenium to Playwright
  - create unit test

</td>
</tr></table>

<!-- slide -->

## What is Aider?
<hr/>

<table><tr>
<td>

- **AI Pair Programming in Your Terminal**:
  Aider allows you to pair program with Large Language Models (LLMs) directly from your terminal.
- **Works with Existing Codebases**:
  Ideal for starting new projects or building upon your current code.
- **Supports Various LLMs**:
  Works best with models like *Claude 3.7 Sonnet*, *DeepSeek R1* & Chat V3, *OpenAI o1, o3-mini & GPT-4o*, and can connect to almost `any LLM`, including `local models`.
- **Codebase Mapping**:
  Creates a map of your entire codebase to work effectively on larger projects.

</td>
<td>

<center>

https://aider.chat/

</center>
<video autoplay="" loop="" muted="" playsinline="" preload="metadata">
  <source src="https://aider.chat/assets/shell-cmds-small.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>
<center><small>Source: <a href='https://aider.chat/assets/shell-cmds-small.mp4' target='_blank'>https://aider.chat/assets/shell-cmds-small.mp4</a></small></center>
</td>
</tr></table>

<!-- slide vertical=true -->

### Aider Features ( 1 ) - `I tried`
<hr/>

<table><tr>
<td>

<small><a href='https://aider.chat/docs/languages.html'>https://aider.chat/docs/languages.html</a></small>
<img src='tree-sitter-language-pack.png' width='600'>
<small><a href='https://aider.chat/docs/usage/watch.html'>hhttps://aider.chat/docs/usage/watch.html</a></small>
<img src='aider-watch-files.png' width='600'>

</td>
<td>

- **Extensive Language Support**
  Compatible with over 100 programming languages (Python, JavaScript, Rust, Ruby, Go, C++, PHP, HTML, CSS, etc.).
  - powered by [tree-sitter-language-pack](https://github.com/Goldziher/tree-sitter-language-pack)
- **Git Integration**
  *Automatically commits changes* with sensible messages, allowing easy diffing, management, and undoing of AI changes using standard Git tools.
  - Tip: `aider --no-auto-commits` to disable
  - Tip: `/undo` to *uncommit*
- **IDE Integration**
  Can be used from within your favorite IDE or editor by *adding comments to your code* ended by `AI!` or `AI?`.
  - Tip: `aider --watch-files`
- **Web Chat Compatibility**
  Can streamline copy/pasting code with LLM web chat interfaces, though it works best with LLM APIs.

</td>
</tr></table>

<!-- slide vertical=true -->

### Aider Features ( 2 ) - `I dit not yet try`
<hr/>

<table><tr>
<td>

- **Multimedia Context**
  Supports adding images and web pages to the chat for visual context, screenshots, and reference documentation.
  - (optional) need `playwright` to fetch web pages
- **Voice-to-Code**
  Enables speaking with Aider to request features, test cases, or bug fixes using your voice.
- **Linting & Testing Integration**
  *Automatically lints and tests code after changes*, and can fix problems detected by linters and test suites.

</td><td>

![](aider-run.png)

<center><small>

Source: https://aider.chat/docs/usage/lint-test.html

</small><center>

</td>
</tr></table>

<!-- slide -->

## What is Ollama?

<hr/>

<table><tr>
<td>

- **What is Ollama?**
  - open-source tool to run `Large Language Models (LLMs)` on *local machine*.
  - Simplifies local LLM deployment and management.
  - Powered by [llama.cpp](https://github.com/ggml-org/llama.cpp)
- **Core Benefits**: `Local Execution` & `Control`
  - *Data Privacy* & *Data Ownership*:
    Keeps sensitive data on your machine.
  - *Offline* Capability:
    No internet needed after initial download.
  - *Reduced Latency*:
    Faster interactions without cloud reliance.
  - *Cost-Effective*:
    Avoids recurring cloud fees.

</td><td>

https://ollama.com/models

![](ollama-models.png)

</td>
</tr></table>

<hr/>

<small> Reference: https://www.hostinger.com/tutorials/what-is-ollama </small>

<!-- slide vertical=true -->

### Ollama: Features & Use Cases

<hr/>

- Key Features
  - **Local AI Model Management**
    Full control to *download*, *update*, *delete*, and track different *versions* of models
  - **Command-Line (CLI) & GUI Options**
    Primarily operates via `CLI` for precise control
    supports third-party GUIs like `Open WebUI` for visual interaction.
  - **Multi-Platform Support**
    Broad compatibility across `macOS`, `Linux`, and `Windows`.
- Practical Use Cases
  - Building private chatbots and AI applications,e.g. *legal*, *healthcare*.
  - Conducting secure, `offline` AI research.
  - Integrating AI into existing systems with data privacy in mind
    - e.g. *ERP*, *CRM* within `LAN`

<!-- slide vertical=true -->

### Ollama: few useful Tips

<hr/>

<table><tr><td>

- I pull *GGUF* format models from `LMStudio Community` on `HuggingFace`
  - `ollama pull hf.co/lmstudio-community/gemma-3-4B-it-qat-GGUF:Q4_0`
- get *context length*, *embedding length*, *parameters*, *quantization*
  - `ollama show {MODEL}`
- observe *System Prompt* and *Response Template* from modelfile
  - `ollama show {MODEL} --modelfile`

</td><td>

![](ollama-show-modelfile.png)

</td></tr></table>

<!-- slide -->

### Why do we need to use local LLM?

<hr/>

- **Enhanced `Data Privacy` & `Data Security`**
  Data stays local, reducing third-party exposure.
- **No Reliance on Cloud Services**
  Complete control over infrastructure, greater scalability on local servers.
- **Customization Flexibility**
  Tweak models for specific project requirements and tailored datasets.
- **Offline Access**
  Work without an internet connection.
- **Cost Savings**
  Avoid recurring cloud storage, data transfer, and usage fees.

<!-- slide vertical=true -->

### Guideline: *When* to use local LLM?

<hr/>

<table style='border: 1px solid;'><tr><td style='border: 1px solid;'>Use Local LLM</td><td>

When your prompt (input data) contains:
- **Proprietary Business Information**
  information created by the organization
  e.g. Company's `Source Code`, `Financial`, `Pattern`, etc.
- **Material Nonpublic Information (MNPI)**
  organizational information not released to the public
  e.g. `internal server name`, `password`, `announcement`, `wiki`, etc.
- **Personal Information**
  information that can identify an individual.
  e.g. `email address`, `phone`, `mobile`, `address`, `birth`, etc.

</td></tr>
<tr><td style='border: 1px solid;'>Use Public LLM</td><td>

- translate non-sensitive paragraph
- summarize non-sensitive paragraph
- deep research based on web search results
- brainstorm / plan / generate text with Reasoning LLMs

</td></tr>
</table>
<!-- slide -->

### How to install Aider on different platforms?

<hr/>

Here are `PROs` and `CONs` running `Aider + Ollama` on different environments:

| Environment         | vCPU | RAM | VRAM | Disk | PROs | CONs | Labs |
|---------------------|------|-----|----------|------|------|------|------|
| Google Colab        | 2 | 12 GB | (T4) *15GB* | *72 GB* | free T4 GPU | time out | <a href='https://colab.research.google.com/github/jazzwang/aider-labs/blob/master/lab1/aider_ollama_colab.ipynb' target="_blank"><img alt='Open in Colab' src='https://colab.research.google.com/assets/colab-badge.svg'></a> |
| GCP Cloud Shell  | 2 | 7 GB | N/A | 4.5 GB | free Gemini API Key | limited RAM. No GPU. limited Disk. | <a href="https://shell.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https%3A%2F%2Fgithub.com%2Fjazzwang%2Faider-labs&cloudshell_git_branch=main&cloudshell_workspace=lab2&cloudshell_tutorial=aider-gcloudshell.md" target="_blank"><img alt="Open in Cloud Shell" src="https://gstatic.com/cloudssh/images/open-btn.svg"></a>
| Github Codespaces   | *4* | *15 GB* | N/A | *16 GB* | up to 4 cores/16GM RAM/32 GB Disk | No GPU | <a href="https://codespaces.new/jazzwang/aider-labs/tree/main" target="_blank"><img alt="Open in GitHub Codespaces" src="https://github.com/codespaces/badge.svg"></a> |
| Laptop: Windows 11   | ? | ? | ? | ? | Offline Development | Slow without GPU | |

<!-- slide -->

### Aider: How to switch between local and public LLM models?

<hr/>

- use `/model {MODEL}` to switch between local and public LLM models.
- use `/model ollama/{OLLAMA_LIST_MODELS}` to use local Ollama model
- use `/model gemini/{TAB key}` to use Google Gemini LLMs.
  - PS: `/model gemini-2.5{TAB Key}` use [Google Vertex AI](https://cloud.google.com/vertex-ai) LLMs
- use `/models` to list all supported LLM models.

<!-- slide -->

### LLM: How to request Google Gemini API key?

<hr/>

<!-- slide -->

### Supercharging Your Daily Workflow with Aider

<hr/>

- As a Developer, you always need to read others' source code.

<!-- slide -->

#### A. Reverse Engineering

<hr/>

Make it easy to understand others' git repositories

<!-- slide -->

#### B. Meeting Summary: From MS Teams Live Caption (JSON file format)

<!-- slide -->

#### C. Meeting Summary: From MS Stream Transcript file (WebVTT file format)

<hr/>

- Requirement:
  - Create a new Git Repo
- Input:
  - WebVTT transcript file (`.vtt`)
  - WebVTT-to-JSON transcript file (`.json`)
- Known Limitation:
  - context window size (context length)

<!-- slide -->

#### D. Monthly Team Achievement Summary

<hr/>

- Requirement:
  - Create a new Git Repo
- Input:
  - Jira JQL export CSV file

<!-- slide -->

#### E. Rewrite Program: From Shell Script to Python script

<hr/>

<!-- slide -->

#### F. Rewrite Program: Migrate from Selenium to Playwright

<hr/>

<!-- slide -->

#### G. Create Unit Tests

<hr/>
# InferNode
Scripts to automate the setup of a general purpose AI server

## Supports
- OLLAMA
- VLLM


## Notes This script is very early and does not do some of the things it should do such as:
- VLLM requires cuda 12.4+ the script does not currently fall back to previus versions if it is not available
- This script currently disables the ollama service and starts it manually as not all systems have systemd and when building this script I was working with containers without it

## Usage: WIP
#!/bin/bash

#install ollama
curl -fsSL https://ollama.com/install.sh | sh

#we will manage the service outselves
service ollama stop
systemctl disable ollama

#TODO: set environment variables

#launch "ollama serve" sending everthing to /dev/null and in the background
nohup ollama serve > /dev/null 2>&1 &

#wait 30 seconds for the server to start
sleep 30

# download llama3.1 llama3.2 deepseek-r1 phi4-mini dolphin3
ollama pull llama3.1
ollama pull llama3.2
ollama pull deepseek-r1
ollama pull phi4-mini
ollama pull dolphin3

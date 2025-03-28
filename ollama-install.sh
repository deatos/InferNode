#!/bin/bash


#TODO: We should probably not rely on this auto-installer and instead should rely on the packages provided by OLLAMA but for now this is fine, I guess.
curl -fsSL https://ollama.com/install.sh | sh

# we will manage the service ourselves as not all systems have systemctl/launchctl/etc,  we should probably check for the existence of systemd and skip this if it doesn't exist
service ollama stop
systemctl disable ollama

# launch "ollama serve" sending everthing to /dev/null and in the background
nohup ollama serve > /dev/null 2>&1 &
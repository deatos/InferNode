#!/bin/bash

# Check if Python is at least version 3.12
if ! python3 -c 'import sys; exit(0) if sys.version_info >= (3, 12) else exit(1)'; then
    echo "Python version 3.12 or greater is required"
    exit 1
fi

# Install vllm
# TODO: We should probably not rely on this auto-installer and should probably compile this from source so we can enable/disable certain optimizations.
# The default reqired cuda 12.4 or higher, we should probably check for the version of cuda and provide a fall back if it is not available.
pip install vllm

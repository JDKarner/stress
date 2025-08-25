#!/bin/bash

set -e

# Check for git
if ! command -v git &> /dev/null; then
    echo "git not found, installing..."
    sudo apt update
    sudo apt install -y git
fi

# Check for git-lfs
if ! command -v git-lfs &> /dev/null; then
    echo "git-lfs not found, installing..."
    sudo apt update
    sudo apt install -y git-lfs
    git lfs install
fi

# Clone the repository
if [ ! -d "stress-scripts" ]; then
    git clone https://github.com/jacobktm/stress-scripts
fi

cd stress-scripts

# Run the menu executable
chmod +x ./menu
./menu

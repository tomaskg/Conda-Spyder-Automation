#!/bin/bash

# Download and install Miniconda
echo "Downloading and installing Miniconda..."
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
rm miniconda.sh

# Add Miniconda to PATH
export PATH="$HOME/miniconda/bin:$PATH"

# Update conda
echo "Updating conda..."
conda update -y -n base conda

# Create a new environment and install Spyder
echo "Creating a new environment with Spyder..."
conda create -y -n spyder-env python=3.8 spyder

# Create a "spy" alias to run Spyder
echo "Creating a 'spy' shortcut to run Spyder..."
echo 'alias spy="$HOME/miniconda/envs/spyder-env/bin/spyder"' >> $HOME/.bashrc
source $HOME/.bashrc

echo "Installation complete! Run 'spy' to start Spyder."

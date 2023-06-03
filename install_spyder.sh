#!/bin/bash

# Ask for the name of the environment or use default value
read -p "Enter a name for the environment (default: spyder-env): " env_name
env_name=${env_name:-spyder-env}

# Ask for the name of the shortcut or use default value
read -p "Enter a name for the shortcut to run Spyder (default: spy): " alias_name
alias_name=${alias_name:-spy}

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
conda create -y -n "$env_name" python=3.8 spyder

# Create an alias to run Spyder
echo "Creating a '$alias_name' shortcut to run Spyder..."
echo "alias $alias_name=\"$HOME/miniconda/envs/$env_name/bin/spyder\"" >> $HOME/.bashrc
source $HOME/.bashrc

echo "Installation complete! Run '$alias_name' to start Spyder."

#!/bin/bash

# Take XXX Minutes

# Set up git
git config --global user.email "tech@growtrics.ai"
git config --global user.name "PraveenInTensorDock"


# Install vim
sudo apt-get install vim -y
sudo apt-get install zip -y
sudo apt-get install unzip -y

# miniconda
# mkdir -p ~/miniconda3
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
# bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
# rm -rf ~/miniconda3/miniconda.sh

# init miniconda
# ~/miniconda3/bin/conda init bash
# ~/miniconda3/bin/conda init zsh
# source ~/.bashrc
# source ~/.zshrc

# Install Dependencies
pip install --upgrade pip
pip install -r requirements.txt

# GOOGLE CLOUD SDK
cd ~
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-linux-x86_64.tar.gz
tar -xf google-cloud-cli-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh
source ~/.bashrc
source ~/.zshrc
./google-cloud-sdk/bin/gcloud init
cd growtrics-data-primary/handwriting_recognition


# Get Dataset HAS BEEN COMPILED BELOW
mkdir logs
mkdir datasets
cd datasets
# DOWNLOAD DATASET
gsutil cp gs://growtrics-data-primary/datasets/COCO_TC11_CROHME23.zip .
unzip COCO_TC11_CROHME23.zip
cd ..

# openGL lib (for cv2)
sudo apt-get install libgl1-mesa-glx -y

# gcc
sudo apt-get install gcc -y
# sudo apt-get install nvidia-cuda-toolkit -y
sudo apt-get update -y
sudo apt-get install --reinstall build-essential -y

# Train
# PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True python train.py --lr 0.00005 --batch 4
#!/bin/bash

# Download AWS CLI 2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Install unzip
sudo apt install unzip -y

# Unzip the installer package
unzip awscliv2.zip

# Install the AWS CLI 2
sudo ./aws/install

read -n1 -r -p "Add the AWS CLI in to the \"~/.bashrc\" file. press ENTER to continue!" ENTER

# Backup the .bashrc file
cp ~/.bashrc ~/.bashrc.ori.aws

# Add AWS CLI 2 path to the .bashrc file
echo " " >> ~/.bashrc
echo "# AWS CLI 2" >> ~/.bashrc
echo 'export PATH="${PATH}:/usr/local/bin/aws"' >> ~/.bashrc

# Load the .bashrc
sudo ldconfig

read -n1 -r -p "Configure the AWS CLI 2 right now. press ENTER to continue!" ENTER

# Configure AWS
aws configure


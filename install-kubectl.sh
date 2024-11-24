#!/bin/sh

# Ensure the system is up to date and required dependencies are installed
sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl

# Create the keyring directory if it doesn't exist
if [ ! -d "/etc/apt/keyrings" ]; then
    sudo mkdir -p /etc/apt/keyrings
fi

# Download and add the Kubernetes signing key
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

# Add the Kubernetes community repository
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Update the apt package index
sudo apt-get update

# Install kubectl
sudo apt-get install -y kubectl

# Verify the installation
kubectl version --client

# Enable bash completion for kubectl
echo 'source <(kubectl completion bash)' >>~/.bashrc
source ~/.bashrc

#!/bin/bash
set -e

# Prevents interactive prompts during installation
export DEBIAN_FRONTEND=noninteractive

echo "==== Updating system ===="
sudo apt-get update -y

echo "==== Installing prerequisites ===="
sudo apt-get install -y ca-certificates curl gnupg

echo "==== Adding Docker GPG key ===="
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg --yes
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "==== Setting up Repository ===="
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "==== Installing Docker & Compose Plugin ===="
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "==== Permission Fix for SSH User ===="
sudo usermod -aG docker ubuntu

echo "==== Start Services ===="
sudo systemctl enable docker
sudo systemctl start docker

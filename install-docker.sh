#!/bin/bash
# R="\e[31m"
# N="\e[32m"

sudo dnf -y install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo -y
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user
exit
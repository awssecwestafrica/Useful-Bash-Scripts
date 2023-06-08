#!/bin/bash

echo "----------------------installer for centos 8-------------------------"


sudo yum install yum-utils epel-release -y

echo "----------------------installer Jenkins-------------------------"

sudo yum install java wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y

echo "----------------------installer Docker-------------------------"

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin --allowerasing


echo "----------------------installer Jenkins-------------------------"
#!/bin/bash

# basic patching
sudo yum -y update

# docker
sudo yum -y install docker
sudo service docker start

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# git
sudo yum -y install git

# clone repo
cd /home/ec2-user
git clone https://github.com/rafaelmarques7/multi-docker-hello.git

# cd to repo
cd multi-docker-hello/

# get all remote branches
for b in `git branch -r | grep -v -- '->'`; do git branch --track ${b##origin/} $b; done

# create /etc/nginx directory if not exists
sudo mkdir -p /etc/nginx

# run app
sudo docker-compose up
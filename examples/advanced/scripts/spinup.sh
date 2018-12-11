#!/bin/bash

# ======================================================================= # 
#     This script installs docker, loads a docker app from ECR,           #
#                 and makes it run in the background.                     #
#     This script is configured for                                       #
#         * the ds-web-products-staging account,                          #
#         * a Amazon Linux AMI (version 1) (the second from the list)     #
# ======================================================================= # 

# update packages
sudo yum -y update

# download and start docker
sudo yum -y install docker
#sudo systemctl start docker
sudo service docker start 

# login to registery
sudo aws ecr get-login --no-include-email --region eu-west-2 > login.sh
sudo bash login.sh

# pull docker app
sudo docker pull 975608782524.dkr.ecr.eu-west-2.amazonaws.com/engagement-test:latest

# run docker app
sudo docker run -d -p 80:80 --name engagement-app 975608782524.dkr.ecr.eu-west-2.amazonaws.com/engagement-test:latest



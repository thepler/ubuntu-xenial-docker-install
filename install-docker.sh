#!/bin/bash

# https://docs.docker.com/engine/installation/linux/ubuntulinux/

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get install docker
sudo usermod -aG docker ubuntu
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo newgrp docker
sudo service docker restart


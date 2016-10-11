#!/bin/bash

# https://docs.docker.com/engine/installation/linux/ubuntulinux/

set -x

apt-get update
apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get purge lxc-docker
apt-cache policy docker-engine
apt-get install -y docker-engine
service docker start
apt-get install -y docker
docker run hello-world
groupadd docker
usermod -aG docker ubuntu
gpasswd -a ${USER} docker
service docker restart


#! /bin/bash

sudo apt-get update

sudo apt-get install -y apt-transport-https ca-certificates linux-image-extra-$(uname -r)

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo rm -f /etc/apt/sources.list.d/docker.list

sudo echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" >> /etc/apt/sources.list.d/docker.list

sudo apt-get update

sudo apt-get install -y docker-engine

sudo groupadd docker

sudo usermod -aG docker vagrant

sudo wget -O /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m`

sudo chmod +x /usr/local/bin/docker-compose

sudo wget -O /etc/bash_completion.d/docker-compose https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose

rm  -f /home/vagrant/.bashrc
wget -O /home/vagrant/.bashrc https://github.com/Neths/commons/raw/master/.bashrc

wget -O /home/vagrant/.bash_profile https://github.com/Neths/commons/raw/master/.bash_profile


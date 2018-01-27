#! /bin/bash

sudo apt-get -y update
# For convenience
sudo apt-get -y install mlocate vim python-pip
# Docker setup
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get -y update
apt-get -y install docker-ce

# Now do app files
cp -R /vagrant/app ~/
cd ~/app
# Build container
docker build -t hello .
# Run container in background
docker run -d -p 80:80 -v /vagrant:/vagrant hello

#Log file is in /vagrant/app.log


if ! [[ -L /var/www ]]; then
	rm -rf /var/www/
	ln -fs /vagrant /var/www
fi

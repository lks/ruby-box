#!/bin/sh
# Update the package list
sudo apt-get -y update
sudo apt-get -y install libcurl3 libcurl3-gnutls libcurl4-openssl-dev
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libxml2-dev libxslt-dev libreadline6-dev libyaml-dev nodejs npm
# apt-get -y install libmysqlclient-dev # uncomment for mysql support
cd /tmp
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p286.tar.gz
tar -xvzf ruby-1.9.3-p286.tar.gz
cd ruby-1.9.3-p286/
./configure --prefix=/usr/local
make
make install
gem install bundle
gem install execjs
gem install curb
cd /var/rb-dashboard
bundle

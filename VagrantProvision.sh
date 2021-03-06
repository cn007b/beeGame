#!/usr/bin/env bash

apt-get update

# git
apt-get install -y git

# php
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y php5.6 php5.6-cli php5.6-dom php5.6-mbstring php5.6-curl
apt-get install -y php-xdebug

# composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# init
cd /var/beeGame && composer install

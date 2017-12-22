#!/usr/bin/env bash

# Repos
apt-get update -q

apt-get install --no-install-recommends -qy \
        apt-transport-https ca-certificates apt-utils curl build-essential

# NodeJs
curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash -

## Passenger
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger jessie main > /etc/apt/sources.list.d/passenger.list'

# Update Package Manager
apt-get update -q

# Install Packages
apt-get install --no-install-recommends -qy \
        apache2 apache2-threaded-dev libapache2-mod-passenger \
        nodejs \
        passenger

a2enmod passenger

# Clear
apt-get clean
rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

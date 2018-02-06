#!/bin/bash

sudo yum install git
git clone https://github.com/trilaiclub/${1}
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum -y install nodejs
npm install loopback
sudo npm install -g forever
forever start --verbose --append --uid \"${1}\" --watch --watchDirectory ./server server/server.js --spinSleepTime 1000ms

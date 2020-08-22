#!/bin/bash

set -ex

### prep atom install
apt-get update
apt-get install -y curl
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

apt-get update

apt-get install -y atom vim
apt-get install -y build-essential python3 pip3

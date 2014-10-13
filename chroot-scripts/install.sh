#!/bin/bash

set -e

apt-get update
apt-get install -y sudo dpkg-dev man less vim

#useradd -m -s /bin/bash -G sudo build

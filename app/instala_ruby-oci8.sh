#!/bin/bash

sudo echo <<EOF
[oracle]
SigLevel = Optional TrustAll
Server = http://linux.shikadi.net/arch/$repo/$arch
EOF >> /etc/pacman.conf

sudo pacman -Sys oracle
sudo pacman -S oracle-instantclient-sqlplus oracle-instantclient-sdk
sudo ln -s /usr /usr/lib/sdk

#gem install ruby-oci8
bundle
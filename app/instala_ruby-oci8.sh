#!/bin/bash

sudo su -c 'echo "
[oracle]
SigLevel = Optional TrustAll
Server = http://linux.shikadi.net/arch/\$repo/\$arch
" >> /etc/pacman.conf'

sudo pacman -Sys oracle
sudo pacman -S oracle-instantclient-sqlplus oracle-instantclient-sdk
sudo ln -s /usr /usr/lib/sdk

#gem install ruby-oci8
bundle

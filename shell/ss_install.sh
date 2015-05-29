#!/bin/bash

if [ $(id -u) != "0" ]; then
    printf "Error: You must be root to run this tool!\n"
    exit 1
fi

clear
printf "
####################################################
#                                                  #
# This is a Shell tool for install shadowsocks     #
# Author: haoweishow                               #
# For Ubuntu 32bit and 64bit                       #
#                                                  #
####################################################
"

apt-get update
apt-get install python-gevent python-pip
apt-get install python-m2crypto
pip install shadowsocks
mkdir /etc/shadowsocks/
touch /etc/shadowsocks/config.json

echo "Input the ss server_ip:"
read server_ip
echo "Input the ss server_port:"
read server_port
echo "Input the ss server_pwd:"
read server_pwd

cat > /etc/shadowsocks/config.json <<EOF 
{
  "server":"${server_ip}",
  "server_port":${server_port},
  "password":"${server_pwd}",
  "timeout":600,
  "method":"aes-256-cfb"
}
EOF

cp /etc/rc.local /etc/rc.local.bak
printf "
########################################################################################################
##
# The last step :
# add this "/usr/local/bin/ssserver -c /etc/shadowsocks/config.json" to /etc/rc.local#
##
########################################################################################################
"


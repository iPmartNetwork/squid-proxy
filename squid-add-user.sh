#!/bin/bash
############################################################
# Squid Proxy Installer
# Author: ali hassanzadeh
# Email: info@ipmart.cloud
# Github: https://github.com/iPmartNetwork/squid-proxy/
# Web: https://ipmart.cloud
############################################################
# For Linux Server Management, contact
# https://ipmart.cloud
############################################################

if [ `whoami` != root ]; then
	echo "ERROR: You need to run the script as user root or add sudo before command."
	exit 1
fi

if [ ! -f /usr/bin/htpasswd ]; then
    echo "htpasswd not found"
    exit 1
fi

read -e -p "Enter Proxy username: " proxy_username

if [ -f /etc/squid/passwd ]; then
    /usr/bin/htpasswd /etc/squid/passwd $proxy_username
else
    /usr/bin/htpasswd -c /etc/squid/passwd $proxy_username
fi

if [ ! -f /usr/local/bin/sok-find-os ]; then
    echo "/usr/local/bin/sok-find-os not found"
    exit 1
fi

SOK_OS=$(/usr/local/bin/sok-find-os)

if [ $SOK_OS == "ubuntu2004" ]; then
    systemctl reload squid
elif [ $SOK_OS == "ubuntu1804" ]; then
    systemctl reload squid
elif [ $SOK_OS == "ubuntu1604" ]; then
    service squid restart
elif [ $SOK_OS == "ubuntu1404" ]; then
    service squid3 restart
elif [ $SOK_OS == "debian8" ]; then
    service squid3 restart
elif [ $SOK_OS == "debian9" ]; then
    systemctl reload squid
elif [ $SOK_OS == "debian10" ]; then
    systemctl reload squid
elif [ $SOK_OS == "centos7" ]; then
    systemctl reload squid
elif [ $SOK_OS == "centos8" ]; then
    systemctl reload squid
else
    echo "OS NOT SUPPORTED.\n"
    echo "Contact https://t.me/iPmart_network to add support for your os."
    exit 1;
fi

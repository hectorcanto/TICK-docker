#!/usr/bin/env bash
## run as root

export VERSION=1.5.2-1
export APT_PACKAGES="curl apt-transport-https"

apt-get update
apt-get -y install $APT_PACKAGES

curl -sL https://repos.influxdata.com/influxdb.key | apt-key add -
source /etc/lsb-release
echo "deb https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | \
    tee /etc/apt/sources.list.d/influxdb.list
apt-get update && apt-get -y install telegraf=$VERSION

# usermod -aG docker telegraf
# systemctl restart telegraf

# reduce docker images size
apt-get -y remove $APT_PACKAGES
rm -rf /var/lib/apt/lists/*

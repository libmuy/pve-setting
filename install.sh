#!/bin/bash



function failed()
{
	echo "$1"
	exit 1
}

apt-get update && \
apt-get install -y git make 

if [ "$?" =! "0" ] ; then
	failed "update failed, please check your network"
fi




git clone https://github.com/libmuy/pve-setting.git || failed "download repo"

pushd pve-setting
make
popd

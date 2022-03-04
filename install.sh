#!/bin/bash



function failed()
{
	echo "$1"
	exit 1
}

apt-get update
apt-get install -y git make || failed "update failed, please check your network"
git clone https://github.com/libmuy/pve-setting.git || failed "download repo"

pushd pve-setting
make

grep -q user .git/config || cat <<EOS >> .git/config
[user]
        name = Libmuy
        maile = libmuy@gmail.com
EOS

popd

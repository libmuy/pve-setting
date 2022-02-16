#!/bin/bash

if ! grep pve-no-sub /etc/apt/sources.list -q; then
	cat <<-EOS >> /etc/apt/sources.list

	# PVE pve-no-subscription repository provided by proxmox.com,
	# NOT recommended for production use
	deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription
	EOS
fi

sed -i -E 's/^deb/#deb/' /etc/apt/sources.list.d/pve-enterprise.list




all:  fix-enterprise-repo install-tools enable-wol
fix-enterprise-repo:
	./fix-enterprise-repo.sh


install-tools:
	apt-get update
	apt-get install -y vim


enable-wol:
	cp eno1_wol /etc/network/if-up.d/eno1_wol


all:  fix-enterprise-repo install-tools
fix-enterprise-repo:
	./fix-enterprise-repo.sh


install-tools:
	apt-get update
	apt-get install -y vim

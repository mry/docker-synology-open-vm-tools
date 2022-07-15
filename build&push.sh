#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Usage: $0 <tagname>"
	exit 1
fi

echo "Building emryl/docker-synology-open-vm-tools:$1 docker image"

read -r -p "Are you sure to run this script ? [Y/n] " answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
	docker build --no-cache --pull -t emryl/docker-synology-open-vm-tools:$1 .
	docker push emryl/docker-synology-open-vm-tools:$1
	echo "Successfully pushed emryl/docker-synology-open-vm-tools:$1"
	exit 0
else
	echo "Abort"
	exit 1
fi

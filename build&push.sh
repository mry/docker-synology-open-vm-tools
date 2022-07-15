#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Usage: $0 <tagname>"
	exit 1
fi

echo "Building emryl/docker-synology-open-vm-tools:$1 docker image"

read -r -p "Build Dockerfile ? [y/N] " answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
	docker build --no-cache --pull -t emryl/docker-synology-open-vm-tools:$1 .
	#docker push emryl/docker-synology-open-vm-tools:$1
	echo "Successfully built emryl/docker-synology-open-vm-tools:$1"
else
	echo "Did not build a new version"
fi

read -r -p "Run Docker Scan with Snyk ? [y/N] " answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
	docker scan --file ./Dockerfile emryl/docker-synology-open-vm-tools:$1
	echo "Successfully scanned emryl/docker-synology-open-vm-tools:$1"
else
	echo "Did not scan for vulnerabilities"
fi

read -r -p "Push to DockerHub ? [y/N] " answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
	docker push emryl/docker-synology-open-vm-tools:$1
	echo "Successfully pushed emryl/docker-synology-open-vm-tools:$1"
else
	echo "Finished without pushing to DockerHub"
fi

exit 0
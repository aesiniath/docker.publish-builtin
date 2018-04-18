#!/bin/sh
set -x
set -e

initialize () {
	if [ -f .stamp/initialize ] ; then
		return
	fi
	if [ ! -d .stamp ] ; then
		mkdir .stamp
	fi
#	docker pull ${REGISTRY}/afcowie/fedora:27
	touch .stamp/initialize
}

dependencies () {
	if [ .stamp/dependencies -nt .stamp/initialize ] ; then
		return
	fi
	docker create \
		--volume=${PWD}/build:/mnt:z \
		--volume=fedora-package-cache:/var/cache:z \
		--tty=true \
		afcowie/fedora:27 \
		/mnt/inside/dependencies.sh > .stamp/running
	ID=`cat .stamp/running`
	docker start --attach=true ${ID}
	docker commit ${ID} afcowie/latex:latest
	docker rm ${ID}
	rm .stamp/running
	touch .stamp/dependencies
}

initialize
dependencies


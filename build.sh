#!/bin/bash -xe

docker build \
	--tag=localhost/afcowie/publish:latest \
	--network=proxy \
	.

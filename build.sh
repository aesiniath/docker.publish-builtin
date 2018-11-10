#!/bin/bash -e

docker build \
	--tag=localhost/afcowie/publish:latest \
	--network=proxy \
	.

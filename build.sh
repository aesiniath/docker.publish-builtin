#!/bin/bash -e

docker build \
	--tag=docker.io/oprdyn/publish-builtin:latest \
	--network=proxy \
	.

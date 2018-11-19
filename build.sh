#!/bin/bash -e

docker build \
	--tag=docker.io/oprdyn/publish-default:latest \
	--network=proxy \
	.

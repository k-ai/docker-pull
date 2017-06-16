#!/bin/sh
set -e

if [ -z "${DOCKER_IMAGE}" ]; then
	echo "DOCKER_IMAGE is missing"
	exit 1
fi;

if [ "${DOCKER_AUTH}" != "FALSE" ]; then
	if [ -z "${DOCKER_USERNAME}" ]; then
		echo "DOCKER_USERNAME is missing"
		exit 1
	fi;

	if [ -z "${DOCKER_PASSWORD}" ]; then
		echo "DOCKER_PASSWORD is missing"
		exit 1
	fi;

	docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}
fi;

docker pull ${DOCKER_IMAGE}

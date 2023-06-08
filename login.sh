#!/bin/bash

set -ex
source .env
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin ${DOCKER_REGISTERY_ACCOUNT}

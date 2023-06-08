#!/bin/bash

set -ex
source .env
source ./login.sh \
&& docker image prune -f && docker compose down && docker compose pull && docker compose up -d && docker compose logs -f

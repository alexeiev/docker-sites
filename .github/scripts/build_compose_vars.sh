#!/bin/bash

# echo "check id"
# echo "$DOCKER_ID" > id_.txt
echo "Make compose file"
sed -i "s/TRAEFIK_USER_DASH/$TRAEFIK_USER_DASH/g" docker-compose.yaml
sed -i "s/TRAEFIK_PWD_DASH/$TRAEFIK_PWD_DASH/g" docker-compose.yaml
sed -i "s/TRAEFIK_MAIL/$TRAEFIK_MAIL/g" docker-compose.yaml

# echo "Deploy the stack"
# ssh -i id_.txt root@140.238.69.154 test -d /app/project || mkdir -p /app/project
# scp -i id_.txt docker-compose.yaml root@140.238.69.154:/app/project

# echo "exec new deploy"
# ssh -i id_.txt root@140.238.69.154 docker compose -d -f docker-compose.yaml -p docker-2 up
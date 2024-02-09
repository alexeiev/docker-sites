#!/bin/bash


echo "Make compose file"
sed -i "s/TRAEFIK_USER_DASH/$TRAEFIK_USER_DASH/g" docker-compose.yaml
sed -i "s/TRAEFIK_PWD_DASH/$TRAEFIK_PWD_DASH/g" docker-compose.yaml
sed -i "s/TRAEFIK_MAIL/$TRAEFIK_MAIL/g" docker-compose.yaml

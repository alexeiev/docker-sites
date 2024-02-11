#!/bin/bash

PROJ="site-static"

case $1 in
    start)
        docker compose -f /app/cicd/docker-compose.yaml -p $PROJ up -d
        exit 0
    ;;
    stop)
        docker compose -f /app/cicd/docker-compose.yaml -p $PROJ down
        #remover containers do site
        docker image rm -f $(docker image ls |grep $PROJ |awk '{print $3}'|uniq)
        exit 0
    ;;
    status)
        PSD=$(docker compose ls | grep $PROJ | grep running)
        if [ -n "$PSD"  ]
        then
            echo "Service is Running"
            exit 0
        else
            echo "Service is not Running"
            exit 1
        fi
    ;;
esac
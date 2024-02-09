#!/bin/bash

case $1 in
    start)
        docker compose -f /app/cicd/docker-compose.yaml -p site-static up -d
        exit 0
    ;;
    stop)
        docker compose -f /app/cicd/docker-compose.yaml -p site-static down
        exit 0
    ;;
    status)
        PSD=$(docker compose ls | grep site-static | grep running)
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
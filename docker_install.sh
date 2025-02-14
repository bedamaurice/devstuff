#!/bin/sh
echo "Install docker and docker-compose-2? (y=yes)"
read doin

if [ doin == "y" ];then
    sudo apt update
    sudo apt install docker.io docker-compose-v2
    docker -v
else
    exit 1
fi


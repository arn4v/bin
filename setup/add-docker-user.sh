#!/usr/bin/env bash
if [ which docker >/dev/null 2>&1  ]; then
    read -rp "What should be the name of the docker user?: " username
    if [ id -u "$1" >/dev/null 2>&1 ]; then
        echo "Adding prexisting user ${username} to docker group"
        sudo usermod -aG docker $username
    else
        echo "Adding user \"docker\""
        sudo useradd --create-home --shell $(which bash) --groups docker docker
    fi
else
    echo "Docker isn't installed"
fi

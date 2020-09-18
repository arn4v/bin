#!/usr/bin/env bash
USERNAME=$1
if [[ ! -z ${USERNAME} ]]; then
    sudo useradd --create-home --shell "$(which bash)" --groups sudo ${USERNAME} 
    sudo passwd --delete "${USERNAME}"
    sudo chage --lastday 0 ${USERNAME}
else
    echo "Usage: ./add-admin-user.sh <username>"
fi

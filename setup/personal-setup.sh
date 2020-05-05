#!/bin/bash

source ~/scripts/functions

function keygen() {
    ssh-keygen -t rsa -b 4096 -C "arn4v@tutanota.com"
    cat $HOME/.ssh/id_rsa.pub
}

function gitconf() {
    git config --global user.name "Arnav Gosain"
    git config --global user.email "arn4v@tutanota.com"
}

function gitconfol() {
    git config --global user.name "Arnav Gosain"
    git config --global user.email "arn4v@outlook.com"
}

keygen
gitconf

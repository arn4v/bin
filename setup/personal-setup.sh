#!/bin/bash

source ~/scripts/functions

gitconf() {
    git config --global user.name "Arnav Gosain"
    git config --global user.email "arn4v@tutanota.com"
}

gitconfol() {
    git config --global user.name "Arnav Gosain"
    git config --global user.email "arn4v@outlook.com"
}

keygen "arn4v@tutanota.com"
gitconf

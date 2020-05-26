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

setupthemes() {
    mkdir ~/.themes; mkdir ~/.icons; mkdir ~/.fonts
    git clone https://github.com/EliverLara/Ant-Dracula .themes/Ant-Dracula
    git clone https://github.com/auranticus/San-Francisco-family .fonts/SanFrancisco
}

gitconf
setupthemes

if [[ $(ps -A | grep gnome | tail -n 1 | wc -c) -ne 0 ]]; then sudo apt install gnome-tweaks; fi

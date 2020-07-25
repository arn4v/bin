#!/bin/env bash
version='r30.0.3'
file_name=platform-tools_${version}-linux.zip
bin_folder=$HOME/scripts/bin
wget https://dl.google.com/android/repository/$file_name -P $bin_folder
unzip $bin_folder/$file_name -o -d $bin_folder
rm $bin_folder/$file_name

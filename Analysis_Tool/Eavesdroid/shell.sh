#!/bin/sh

usage() { echo "Usage: $0  [-p] package " 1>&2; 
    
            exit 1; }  


while getopts p: flag
do
    case "${flag}" in
        p) package=${OPTARG};;
    esac
done

if [ -z "$package" ]
then
    bash --init-file <(echo "adb shell; exit")
else
    bash --init-file <(echo "adb shell run-as $package; exit" )
fi


#!/bin/sh
usage() { echo "Usage: $0  [-d] directory   [-a] new_apk  ([-s] sign?)" 1>&2; 
    
            exit 1; }  


while getopts d:a:s: flag
do
    case "${flag}" in
        d) dir=${OPTARG};;
        a) apk=${OPTARG};;
        s) sign=${OPTARG};;
    esac
done

if [ -z "$dir" ] || [ -z "$apk" ]
then
    usage
else
    apktool b $dir  -o $apk 2>/dev/null

    if [ -n "$sign" ]
    then
        keytool -genkey -noprompt -alias eavesdroid_alias -dname "CN=eavesdroid, OU=NUS, O=NUS, L=Singapore, S=Singapore, C=SG"  -keystore eavesdroid.keystore -storepass password  -keypass password  -keyalg RSA -keysize 2048 -validity 10000  2>/dev/null
        jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore eavesdroid.keystore $apk eavesdroid_alias -storepass password -keypass password   2>/dev/null
    fi

fi

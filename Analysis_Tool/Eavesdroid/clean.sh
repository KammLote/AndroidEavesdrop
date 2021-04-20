#!/bin/sh
echo "### Removing every APK Output files"
#rm -r EAVESDROID_[0-9]{2}* 
find .  -regex '.*EAVESDROID\_[0-9]\{2\}\-[0-9]\{2\}\-[0-9]\{2\}\_[0-9]\{2\}\:[0-9]\{2\}' -exec rm -r {} \; 2> /dev/null

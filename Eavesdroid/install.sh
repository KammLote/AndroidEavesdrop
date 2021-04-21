#!/bin/bash


aptModules=(
    apktool
    radare2
    graphviz 
    imagemagick
    tree
    adb
    python2 # Only for Database, can be removed
    python3
)
brewModules=(
    apktool
    radare2
    graphviz 
    imagemagick
    tree
    android-platform-tools
    #python@2 # Only for Database, can be removed
    python3
)
pythonModules=(
    filetype     
)




# LINUX
if [ "$(uname)" == "Linux" ]
then
	for i in "${aptModules[@]}"; do
		aptv=`dpkg -s $i 2>/dev/null` 
		if [ -z "$aptv" ]
		then
			sudo apt-get -y install $i
		fi
	done


# MACOS
elif [ "$(uname)" == "Darwin" ]
then
	for i in "${brewModules[@]}"; do
		aptv=`brew list $i 2>/dev/null` 
		if [ -z "$aptv" ]
		then
			brew install $i
		fi
	done
fi



# PYTHON3
for i in "${pythonModules[@]}"; do
    pip3=`pip3 list | grep $i`
    if [ -z "$pip3" ]
	then
		pip3 install $i
	fi
done



echo " "
echo " "
echo Create \"eavesdroid\" shortcut ? [Y/N]
read symlink
echo " "

if [[ "$symlink" == "Y" ]] #|| [ "$symlink" = "yes" ] || [ "$symlink" = "Yes" ]; 
then
    currdir=`pwd`
    sudo ln -s ${currdir}/eavesdroid.py /usr/local/bin/eavesdroid
fi
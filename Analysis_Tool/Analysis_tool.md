# Analysis Tool



### Downloads

brew install tree

### Imports

import os

import [filetype](https://github.com/h2non/filetype.py)

import sys

import subprocess

--> Create a file (`installs.txt`) and ask to launch the command `pip3 install installs.txt`



### Tools

APKTOOL

radare2

Binary CFG Tool 





## To Do

MAYBE PUT IT AS THE ARGUMENT: **Import the APK**

Get the **virustotal** Info

Get the Manifest

**Quit** (put in TEMP instead of removing Junk)

**Native Files:**
	check where these native files are being called in the code

**Internet Connection:**

- Look for Internet permission
- Look for IPs, URLs, HTTP identifiers

Raise a **Warning message** each time a seemingly malicious info is found

**Java Decompiler**

**ADB** automatisation





## To Do v2

1. Complete the `Package name` into `APK information` 
   Get as much information as possible from the APK
   Try to see what `aapt` originally gives
2. `Native Libaries` : Add a description saying what tools you want to use for disassembling the Native files. 

3. Add an output for everything that has been requested
   Maybe create a list of codes at the beginning. Each output will create a specific code (for instance during the APK architecture, to be able to print different architectures, try to create the **hash of the path** as the code)
4. `String search`: Improve the list of Network identifier strings
5. `String search`: Propose to find strings on subportions of the Resources/Assets/SmaliCode

6. `adb tool` => `select devices`: Improve selection menu

7. `String search`: do it with JAR code for better understanding



8. `adb tools` : DATABASES



9.  FIX NATIVE LIBRARIES
10. Burp Dynamic analysis

11. For dynamic analysis, you may want to map the domain names to your laptop IP address:  https://android.stackexchange.com/questions/78320/how-to-set-up-a-host-to-ip-mapping-on-unrooted-android
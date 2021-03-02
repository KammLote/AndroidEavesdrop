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

   Add an output for everything that has been requested
   Maybe create a list of codes at the beginning. Each output will create a specific code (for instance during the APK architecture, to be able to print different architectures, try to create the **hash of the path** as the code)

3. `String search`: Improve the list of Network identifier strings

4. `String search`: Propose to find strings on subportions of the Resources/Assets/SmaliCode

5. `adb tool` => `select devices`: Improve selection menu

6. `String search`: do it with JAR code for better understanding

7. Burp Dynamic analysis
   **IDEA**: Headless Burp + create proxy with ADB
   
8. For dynamic analysis, you may want to map the domain names to your laptop IP address:  https://android.stackexchange.com/questions/78320/how-to-set-up-a-host-to-ip-mapping-on-unrooted-android

9. Check if the other tools exist











## SOOT



JRE location: `/Library/Internet Plug-Ins/JavaAppletPlugin.plugin`

`jt.jar` file location: `Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/rt.jar`

**NEW LOCATION:**`/Library/Java/JavaVirtualMachines/jdk1.8.0_261.jdk/Contents/Home/jre/lib/rt.jar`



```
java -cp sootclasses-trunk-jar-with-dependencies.jar soot.Main -cp .:/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/rt.jar -pp  Hello Hello2
```



```
java -cp sootclasses-trunk-jar-with-dependencies.jar soot.Main -cp .:/Library/Java/JavaVirtualMachines/jdk1.8.0_261.jdk/Contents/Home/jre/lib/rt.jar Hello Hello2
```



**JAVA_HOME modified with:** 
`export JAVA_HOME="$(/usr/libexec/java_home -v '1.8*')`  in the file  `~/.zshenv`
`source ~/.zshenv`
`echo $JAVA_HOME`





### Launch Soot on a specific file

```
javac Hello.java  ##creates the .class file

java -cp sootclasses-trunk-jar-with-dependencies.jar soot.Main -cp . -pp Hello
```









### NEW ADB TOOLS

> https://engineering.nodesagency.com/categories/android/2019/04/29/automate-debugging-and-testing-workflows-using-adb

- Logcat: Done
- reinitialize permissions for a specific application: DONE
- screenshot recording: DONE
- shared preferences
- clear app data: DONE
- BURP
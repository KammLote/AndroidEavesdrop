# Eavesdroïd
## NUS Dissertation project

<br/>

<br/>

This tool is used for the Analysis of Android Applications, in particular to detect Eavesdropping features.

It has been developped for the dissertation project "[Android Analysis Tool for Eavesdropping Applications](./Android_Analysis_Tool_for_Eavesdropping_Applications.pdf)" of National University of Singapore.



### Installation

The tool has been designed to work on Unix systems and to run with python3.

```bash 
git clone https://github.com/KammLote/AndroidEavesdrop .

cd AndroidEavesdrop/Eavesdroid
./install.sh

```



### Run the application

```bash
> eavesdroid

============================================
Analysis tool for Android Eavesdropping apps
============================================

[01] Select APK
[02] Select Android Device

[/] APK Disassembly
[/] Package information
[/] Requested Permissions
[/] Native libraries
[/] APK Architecture
[/] String Search

[/] Select target package
[/] Install target APK
[/] Export an APK
[24] Repack and Sign package

[/] Export Databases
[/] Inspect Storage
[/] Microphone Status
[/] Logcat
[/] PROXY [TODO]
[/] Screenshot

[/] Modify Permissions
[/] Clear app Data
[/] Enable Debug/Backup

[-1] Options
[0] Quit

>
```



/!\ Due to the the end of support of python2 on Brew (MacOS), the tool "Export Databases" might be deprecated for systems not having python2.



/!\ Some tools using ADB might not work when running the tool on a Virtual Machine, due to Android USB Debugging issue.




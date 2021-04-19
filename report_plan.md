# Android Analysis tool for Eavesdropping applications



<br/>

<br/>

<br/>

<br/>

<br/>





## Introduction 

15%

##### Is Facebook listening at you ?

How is it possible that I receive an ad on my phone, after I talked about something or saw something ? Are the GAFA behind this situation ? 

##### Is it a coincidence ?

> Mathematics professor David Hand from Imperial College London wrote a book called The Improbability Principle, in which he argued that apparently extraordinary events happen all the time.

##### Adware/Eavesdropping application that have been disclosed publicaly

##### Are Eavesdropping app legal ?

Why it is "somewhat" legal? How they warn users ? How have they been caught ? What are the laws against these kinds of applications.

##### Other kinds of malwares

These are from the family of **adwares**, but employ a very interesting technique to target the user better and find more valuable/useful ads.

Give other examples of Adwares... how they work in a general basis.



/!\ XDT != Eavesdropping







INTRO

Coincidence, Facebook listening to you ?

Adware: unwanted software designed to throw advertisements up on your screen
Spyware: 







UTILITY OF ALPHONSO:

- XDT
- Audience Analytics
- Synchronised Contents
- Proximity Marketing
- Device Pairing

ISSUES:

Low battery

Opt-out conditions

kids cannot understand



LEGALITY

<br/>

<br/>

<br/>

<br/>

<br/>

## Litterature review + Introduction of techniques

20%

<br/>

#### Famous applications doing such Eavesdropping

/!\ XDT != Eavesdropping



##### 1. How to find these applications

Press articles (eg. https://www.nytimes.com/2017/12/28/business/media/alphonso-app-tracking.html)

Virus Total: same signatures, same detections, same advertisers, permissions ... 

Forums

Github repositories

> https://github.com/MAVProxyUser/SilverPushUnmasked
> https://reports.exodus-privacy.eu.org/fr/trackers/80/
> https://public.addonsdetector.com/silverpush-android-apps/

<br/>

##### 2. Alphonso

Name/URL/libraries triggering it (Android Privacy Risk Alphonso (PUA), inMobi), advertisers (ads.flurry, sponsorpay, supersonicads, jirbo, mopub).,

Taxonimy of Alphonso Software: India, same developpers, dates of parution/modification.

<br/>

##### 3. Silverpush

<br/>

##### 4. Other apps

Chatrious, Apex chat (callerspy malware), Soraka (adware), Mandrake (abfix, coincast, snaptune)

<br/>

<br/>

#### What to look at in order to distinguish an eavesdropping app and a genuine app 

1. **Permissions**: check if permissions require audio, even for an app that shouldn't use the microphone.
   Later, check how are these permissions requested: 
   -- do they need user input?
   -- do they trick the user into accepting these permissions (click jacking for instance
   -- do they come from a pack of permissions (older versions of Android where requesting for all the permissions at the time in order for the application to run)
   -- is the application running without audio permissions

2. **How the audio is recorded**: 
   -- libraries used by the application 
   -- User input triggered for recording audio ? Or is it done in the background ?
   -- For how long is the audio recording ? When is it recording ?
   -- ultrasounds ?
3. **What the audio is done with**:
   -- Is it stored somewhere ? Is it sent somewhere ? Databases
   -- Is it translated to speech ? Is it fingerprinted ?
4. **Which servers the application contact**:
   -- Is there the Internet permissions ?
   -- What hosts is the app contacting ?
   -- What is the app sending ? genuine data, audio files, audio fingerprint ?
   -- What is the app receiving ? Data about the audio, Advertisers data...

<br/>

#### How to obtain these information

- **Static Analysis:** Reverse enginner the application 
  Most complete way of understanding how the application work. 
  Yet it is a tedious task (depends on the obfuscation of the application, depends on the size of the code, the libraries used ...). Harder to automated using a tool, but it can make the reverse engineering much easier.
- **Dynamic Analysis:** launch the application and observe what happens
  -- first hands-on on the app2
  -- logs, internet traffic, saved data  ...
  Also possible to automate.
  Depends on whether the application can still be run, if the reached servers are still up ... (these questions are not necessarily important in the case a malware has not been disclosed yet).

<br/>

#### How to create a "eavesdropping adware score"

What information to aggregate in order to judge at the end if an app could be an eavesdropping adware or not ? 

<br/>

<br/>

<br/>

<br/>

<br/>



## Design and implementation of the tool

30%

#### Utility of the tool

Automate a part of the task (to answer the previously asked questions)

Assistant to the reverse engineering task + to the dynamic analysis

Easy to use

<br/>

#### Tool capabilities

What tools are embedded in the app ? ADB, apktool, radare2...



###### STATIC ANALYSIS

**Disassembly of the APK** (`apktool`)

**Basic description of the APK** (using AndroidManifest):
Give a first undertanding of the APK: package name, versions...
Show the global framework of the app: activities, services
Show permissions requested by the app (and their severity)

**Architecture of the APK**:
Get a deeper vision of the App framework: main packages, global and specific class trees.
CFG of the entire App/Packages if I manage to make it work.
-> Binaries are not stripped, so it is easy



**Native files**: 
Show the native libraries present in the application. 
Give a first understamding of these libraries with the radare2 tool (Native functions and Control Flow Graph).
Launcher for a disassembler.

**String Search:** network identifiers, possibility to look for any string in Resources/Assets/Code

###### DYNAMIC ANALYSIS

**ADB Tool:**
Intuitive tool to interact with the running application, using Android Debug Bridge.
-- install the Application on the device / export an APK of the device (for instance with Dynamic Code Loading malware)
-- show packages installed on the device (in order to extend the search through the different APKs of the device)
-- Obtain the databases used by the app (if storing audio content for instance)
-- Interact with the application data during run-time (clear app data, modify permissions on the go)
-- Observe the log traffic on the phone, or for a specific app/string

<br/>

###### MAKE APK DEBUGGABLE AND BACKUPABLE !

#### Tool usage

Explain how to launch and use the tool. On which environment it works, with which kinds of APKs...

Explanation of a short demo on an APK for instance.

<br/>

#### Benchmark of the tool 

Evaluate the performance of the tool
Benchmark of the tool, Accuracy performance - including benine and Malicious applications 

Recall all of the benine and malicious components of the applications —> give a maliciousness score

Use it on many different applications: false positive and negative



<br/>

<br/>

<br/>

<br/>

<br/>

## Case study

30%

Work on Alphonso Software mainly. Anwser the following questions:

#### What are the little particlarities of these app

###### Where is the data treated (on the device, on the server) (is it text to speech, fingerprinting) ?

###### Do they work in the background ?

###### Do they need user input ?

###### How are the permissions granted ?

###### How do they trick the users (the user?

###### What APIs do they use ? (only Android or others ?)

###### How are the ad displayed ? Where do the ads come from ?

Displayed by Google ad libraries, or rewarded ads. How do they link it with the ad name ??

###### How do they check the presence of the user ?

###### What dialog do they initiaite with the server ?

URLs found (*/user/audio_clip_data, /user/location, /audio/fingerprint*), AlphonsoUID + API_Key

###### check this adware analysis content: 

> https://www.trendmicro.com/en_us/research/19/h/adware-posing-as-85-photography-and-gaming-apps-on-google-play-installed-over-8-million-times.html

###### Why are these apps legit in the way they ask for user pemission ? How do they trick the users ?

> "AlphonsoService cannot be instantiated without microphone permissions" 
> "This app uses audio to detect TV ads and content and shows appropriate mobile ads" 
> "This App Would Like to Access the Microphone"

###### What do they manage to recognize ?

Commercial or LiveTV ? Name episode ... give the charts

###### Native libraries

###### Default values of the recording: Prime time ...

###### Databases

###### BURP suite

- [api.alphonso.tv:4430](http://api.alphonso.tv:4430)
- [prov.alphonso.tv:4000](http://prov.alphonso.tv:4000)

###### Logcat with adb

<br/>

<br/>

<br/>

<br/>

<br/>

## Limits

Servers might not work

Tools are missing (hooking API...) - not possible to do it dynamicaly but only staticaly (hard)

Lot of basic analysis necessary



[MODIFY SERVERS IP WITH ADSHELL OR BY REPACKING]

Eavesdropping VS Cross-Device Tracking

<br/>

<br/>

<br/>

<br/>

<br/>

## Conclusion - Future Work 

5%



Low tranaparency: what are they really doing with our data



Pther devices ? Smart TVs, applications, on PC ... 

being a really famous way to track users, everybody does this.











# THINGS TO ADD

Explain how it is important to OPT-OUT



Explanation of project:

- in-depth technical analysis of the underlying technology
-  exposing both implementation & design vulnerabilities, 
-  critical security & privacy shortcomings that we discovered.



Security concerns:

- Information sent through HTTP (device ID, ...)
  Possible to MITM









## Appendixes

Silverpush (Eurecom)

Ultrasound linking: https://www.cityfreqs.com.au/pilfer.php

Surveillance against HongKong protests:

> https://www.fireeye.com/blog/threat-research/2020/05/analyzing-dark-crystal-rat-backdoor.html
>
> https://malware.lu/articles/2014/09/29/analysis-of-code4hk.html

Study on alphonso ACR: https://kaputnikgo.github.io/acr.html

ADB basis:

>  https://engineering.nodesagency.com/categories/android/2019/04/29/automate-debugging-and-testing-workflows-using-adb
> https://www.automatetheplanet.com/adb-cheat-sheet/






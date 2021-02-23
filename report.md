# Android Analysis tool for Eavesdropping applications







## Introduction 

15%

##### Is it a coincidence ?

> Mathematics professor David Hand from Imperial College London wrote a book called The Improbability Principle, in which he argued that apparently extraordinary events happen all the time.

##### Other kinds of malwares

These are from the family of **adwares**, but employ a very interesting technique to target the user better and find more valuable/useful ads.

Give other examples of Adwares... how they work in a general basis.

##### Are they legal ?

Why it is "somewhat" legal? How they warn users ? How they have been caught ? 

## Litterature review + Introduction of techniques

20%

##### Applications caught for doing such things 

Alphonso - Silverpush

Found on the internet / using Virus Total and checking other similar signatures.

> https://www.nytimes.com/2017/12/28/business/media/alphonso-app-tracking.html

Github lists:

> https://github.com/MAVProxyUser/SilverPushUnmasked
> https://reports.exodus-privacy.eu.org/fr/trackers/80/
> https://public.addonsdetector.com/silverpush-android-apps/

##### How to find the applications on virustotal

Name/URL/libraries triggering it (Android Privacy Risk Alphonso (PUA), inMobi), advertisers (ads.flurry, sponsorpay, supersonicads, jirbo, mopub)

##### Taxonomy of applications spying on users

India, same developpers, dates of parution/modification.



##### Other apps to look at:

Chatrious, Apex chat (callerspy malware), Soraka (adware), Mandrake (abfix, coincast, snaptune)





## Design and implementation of the tool

30%



#### Benchmark of the tool ?

Evaluate the performance of the tool: Benchmark of the tool, Accuracy perf, Include benine and Malicious applications Recall all of the benine and malicious components of the applications —> give a maliciousness score
Say how many lines of code are computed
Give a lot of statistic about the tool
Use it on many different applications: false positive and negative







## Case study

30%



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

###### Native code

Make the speech to fingerprint

###### Default values of the recording: Prime time ...

###### Databases



###### BURP suite

- [api.alphonso.tv:4430](http://api.alphonso.tv:4430)
- [prov.alphonso.tv:4000](http://prov.alphonso.tv:4000)

###### Logcat with adb



## Conclusion - Future Work 

5%









## Appendixes

Silverpush (Eurecom): 

Ultrasound linking: https://www.cityfreqs.com.au/pilfer.php

Surveillance against HongKong protests:

> https://www.fireeye.com/blog/threat-research/2020/05/analyzing-dark-crystal-rat-backdoor.html
>
> https://malware.lu/articles/2014/09/29/analysis-of-code4hk.html

Study on alphonso ACR: https://kaputnikgo.github.io/acr.html

ADB basis: https://engineering.nodesagency.com/categories/android/2019/04/29/automate-debugging-and-testing-workflows-using-adb
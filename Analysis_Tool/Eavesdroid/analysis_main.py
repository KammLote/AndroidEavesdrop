#!/usr/bin/env python3



import os
import filetype
import sys
import subprocess
import datetime
import re
import signal
import time


def main(): 
    global APK_name
    global apktool_dir
    global APK_dir
    global erase_option
    while True:
        print("============================================")
        print("Analysis tool for Android Eavesdropping apps")
        print("============================================")        
        if check_valid(APK_name):
            print("| APK: "+APK_name)
            print("| Output: "+APK_dir)
        if check_valid(apktool_dir):
            print("| Apktool Dir: "+apktool_dir+"/")
        print("")


        options_list=[["1","Import APK"],
        ["2","Apktool Disassembly"],
        ["3","Package name"],
        ["4","Application Permissions"],
        ["5","Native libraries"],
        ["6","APK Architecture"],
        ["7","String Search"],
        ["8","ADB Tool"],
        ["9","API Call (WIP)"],
        ["",""],
        ["-1", "Options"],
        ["0", "Quit"],
        ["",""]]


        if not check_valid(APK_name):
            options_list[2-1][0]="/"
            options_list[8-1][0]="/"
        if not check_valid(apktool_dir):
            options_list[3-1][0]="/"
            options_list[4-1][0]="/"
            options_list[5-1][0]="/"
            options_list[6-1][0]="/"
            options_list[7-1][0]="/"
            options_list[9-1][0]="/"

        for i in range(len(options_list)):
            if options_list[i][0]:
                print("["+options_list[i][0]+"] "+options_list[i][1])
            else:
                print("")

    
        try:
            select = int(input("> "))
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select=-10 ##Error handling

        ## IMPORT APK
        if (select==1):
            res, folder = import_apk()
            if res!='' and folder!='':      ## In case the user leaves the Import without selecting any
                APK_name = res
                APK_dir = folder
                outputfile("\nImported APK: "+APK_name+"\n\n", False)



        ## APKTOOL DISASSEMBLY
        if (select==2):                                
            if not check_valid(APK_name):
                print ("False")
                os.system('clear')       
            else:
                apktool_dir = apktool_disass()
                print("DIR: ",apktool_dir)
        
        ## PACKAGE NAME
        if (select==3):
            if not check_valid(apktool_dir):
                print ("False")
                os.system('clear')   
            else:     
                manifest_package()

        ## APPLICATION PERMISSIONS
        if (select==4):
            if not check_valid(apktool_dir):
                print ("False")
                os.system('clear')   
            else:     
                manifest_permissions()
            
        ## NATIVE LIBRARIES
        if (select==5):
            if not check_valid(apktool_dir):
                print ("False")
                os.system('clear')   
            else:     
                list_native_lib()
        
        ## APK STRUCTURE
        if (select==6): 
            if not check_valid(apktool_dir):
                print ("False")
                os.system('clear')   
            else:     
                structure_tree()

        ## STRING SEARCH
        if (select==7):
            if not check_valid(apktool_dir):
                print ("False")
                os.system('clear')   
            else:     
                string_search()


        if (select==8):                                
            adb_tool()
        

        if (select==9):                                
            if not check_valid(apktool_dir):
                print ("False")
                os.system('clear')       
            else:
                API_call()
        
        ###### REMOVE   
        if (select==10):
            structure_tree__tree("honey/smali/tv", "honey\/smali\/")
            input()

        ## QUIT
        if (select==0):
            if erase_option:
                junk_deletion(apktool_dir, APK_dir)
            os.system('clear')       
            sys.exit(0)

        if (select==-1):
            option_menu()

        os.system('clear')   




def junk_deletion(apktool_dir, APK_dir):
    print("Removing Junk")
    if check_valid(apktool_dir):
        subprocess.run(["rm", "-r", apktool_dir]) 
    
    for name in os.listdir(APK_dir):
         # folder deletion
        if (os.path.isdir(os.path.join(APK_dir, name)) and re.findall("backup_",name)):
            subprocess.run(["rm","-r", os.path.join(APK_dir, name)])
         
        # file deletion
        if (os.path.isfile(os.path.join(APK_dir, name)) and re.findall(".so$",name)):
            subprocess.run(["rm", os.path.join(APK_dir, name)])





def option_menu():
    global erase_option
    global write_option
    while True:
        os.system('clear')
        print("\n=== OPTIONS ===")
        # Erase when quitting the app
        if (erase_option): print("\n[1] File deletion |ON| ")
        else: print("\n[1] File deletion |OFF|")
        # Write everything in a report
        if(write_option): print("[2] Output Log |ON|")
        else: print("[2] Output Log |OFF|")
        # Clean the repository from APK_OUTPUT folders
        print("[3] Clean directory + Quit")
        print("[0] Exit\n")
        
        try:
            select = int(input("> "))
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select=-1 ##Error handling

        ## Function list
        if (select==0):
            break
        if (select==1): 
            erase_option=not(erase_option)
        if (select==2): 
            write_option=not(write_option)
        if (select==3):
            for name in os.listdir("."):
                if (os.path.isdir(name) and re.findall("^EAVESDROID_[0-9]{2}-[0-9]{2}-[0-9]{2}_[0-9]{2}:[0-9]{2}$",name)):
                    subprocess.run(["rm","-r", name])
            os.system('clear')       
            sys.exit(0) 




def outputfile(string,keep=True):
    global write_option
    global APK_dir
    global outputlist


    if not(keep) and write_option:
        # CREATING OUTPUT FILE
        outputlist=[]
        output_file=APK_dir+"/output.txt"
        outFile=open(output_file,'w')
        outFile.write("============================================\nAnalysis tool for Android Eavesdropping apps\n============================================\n"+string)
        outFile.close()
        return

    list_ID=hash(string)
    if write_option and not(list_ID in outputlist):
        if (list_ID and list_ID!=True):
            outputlist.append(list_ID)    
        outFile=open(APK_dir+"/output.txt",'a+')
        outFile.write(string)
        outFile.close()
    




def check_valid(name):
    if not(name) or name==".":
        return False
    else:
        return True



def import_apk():
    print("=== Import APK File ===")
    while True:
        apk_name = input('APK file: ')
        # String empty --> go to Main()
        if not apk_name: 
            return '', ''
            break
            
        # File does not exist
        elif not os.path.isfile(apk_name):
            print("The input file does not exist. Try again.\n")
            
        # Wrong file type
        else: 
            file_type=filetype.guess(apk_name)
            if file_type is None or file_type.extension!="zip":
                print('Wrong file type. Please try again.\n')
            else:
                break
    try:
        output_dir = datetime.datetime.now().strftime("EAVESDROID_%d-%m-%y_%H:%M")
        subprocess.run(["mkdir", output_dir])
        apktool_dir=''

        print("The APK "+apk_name+ " has been imported")      
        
        input()    
        os.system('clear')       
        return apk_name, output_dir
    except:
        print("Issue when creating the Output directory: ")
        input()
        return '', ''


# APKTOOL DISASSEMBLY
def apktool_disass():
    global APK_name
    global APK_dir
    try:
        apktool_dir = APK_dir+'/apktool'
        subprocess.run(['apktool', '-f', 'd', APK_name, '-o', apktool_dir])
        
        if (os.path.isdir(apktool_dir+"/smali_classes2")):
            print("Merging Smali code...")
            try: subprocess.call(['cp','-r',apktool_dir+'/smali_classes2/', apktool_dir+'/smali/' ])
            except: print("# ERROR WHEN MERGING THE TWO SMALI FILES")
        print("\nAPKTOOL disassembled the APK in subdirectory: "+apktool_dir)
    except:
        print("ERROR running APKTOOL")
   
    input()    
    os.system('clear')   
    return apktool_dir



# PERMISSIONS CHECK IN MANIFEST
def manifest_permissions():
    global apktool_dir
    global APK_dir
    manifest=apktool_dir+"/AndroidManifest.xml"
    if not os.path.isfile(manifest):
        print("No manifest found")
        return

    print("\n===== Permissions =====")
    with open(manifest, 'r') as file:
        outputfile_Line="\n\n\n=====PERMISSIONS=====\n"
        for line in file:
            if "uses-permission" in line:
                myLine= line.replace('    <uses-permission android:name="', '').replace('"/>\n', '')
                print(myLine)
                outputfile_Line+=myLine+"\n"
    outputfile(outputfile_Line)
    input()    
    os.system('clear')       



# PACKAGE CHECK IN MANIFEST
def manifest_package():
    global apktool_dir
    global APK_dir
    manifest=apktool_dir+"/AndroidManifest.xml"
    if not os.path.isfile(manifest):
        print("No manifest found")
        return

    print("\n===== Package name =====")
    with open(manifest, 'r') as file:
        first_line=file.readline()
        first_line=first_line[first_line.find('package="'):]
        first_line=first_line[first_line.find('"'):]
        first_line=first_line[:first_line.find('" ')][1:]
        print(first_line)
    
    outputfile_Line="\n\n\n=====PACKAGE=====\n"+first_line+"\n"
    outputfile(outputfile_Line)
    input()    
    os.system('clear')       


    
# NATIVE FILES IN MANIFEST
def list_native_lib():

    global apktool_dir
    libraries_dir = apktool_dir+"/lib"
    if not(os.path.isdir(libraries_dir)):
        print("No Library has been found"); input(); return()
    print("\n===== Native Libraries =====\n")
    outputfile_Line="\n\n\n===== Native Libraries =====\n"

    files = subprocess.check_output('find '+ libraries_dir+ ' -type f', shell=True, universal_newlines=True).splitlines()
    counter=0
    library_list=[]
    for line in range (len(files)):
        file=files[line]
        counter+=1
        print("["+str(counter)+"]\nName: "+file.replace(apktool_dir+'/',''), "\nSize: ", os.stat(file).st_size,'\n')
        outputfile_Line+="\nName: "+file.replace(apktool_dir+'/','') + "\nSize: " + str(os.stat(file).st_size) +'\n'
        library_list.append(file)
    
    outputfile(outputfile_Line)
    try:
        while True:
            lib_num=int(input("\nInput number for Disassembly (Enter to exit): "))
            if (1<=lib_num<=counter): binary_disassembly(library_list[lib_num-1]); break
            
    except:
        print("Wrong format: return")
    os.system('clear')       






# DISASSEMBLY OF BINARY FILES (native files disass)
def binary_disassembly(file):
    global APK_dir
    h,filename = os.path.split(file)
    filename = APK_dir+"/"+ filename
    subprocess.run(['cp', file, filename])
    while True:
        os.system('clear')       
        print("\n=== BINARY DISASSEMBLY ===\nBinary File: ",file,"\n")
        print("[1] Functions list \n[2] Display Global Callgraph \n[3] Display function Callgraph (WIP) \n[0] Exit\n")


        try:
            select = int(input("> "))
        except KeyboardInterrupt:
            subprocess.run(['rm', filename])
            sys.exit(1) 
        except:
            select=-1 ##Error handling
        
        ## Function list
        if (select==0):
            #subprocess.run(['rm', filename])
            break
        if (select==1): 
            binary_disassembly__list(filename)
        if (select==2): 
            binary_disassembly__cfg(filename)
            
    os.system('clear')     

def binary_disassembly__list(filename):
    dir_path = os.path.dirname(os.path.realpath(__file__))
    output = subprocess.check_output(['bash '+dir_path+'/radare2.sh -n %s -l' % filename], shell=True,  universal_newlines=True)
    print(output)
    outputfile_Line="\n\nNative Library: "+filename[filename.find("/"):]+output
    outputfile(outputfile_Line)
    input("Press a key to leave ")

def binary_disassembly__cfg(filename):
    dir_path = os.path.dirname(os.path.realpath(__file__))
    subprocess.run(['bash '+dir_path+'/radare2.sh -n %s -c' % filename], shell=True)
    outputfile_Line="\n\nNative Library: "+filename[filename.find("/"):]+"\n=== Global Callgraph ===\nSaved in: "+filename+"_CFG/callgraph.png\n"
    outputfile(outputfile_Line)
    input("Press a key to leave ")
    





# APK TREE STRUCTURE
def structure_tree():
    global apktool_dir
    smali_path= apktool_dir+"/smali"
    if not(os.path.isdir(smali_path)):
        print("No code has been found"); input(); return()
    while True:
        os.system('clear')       
        print("\n=== APK ARCHITECTURE ===\n")
        print("[1] Main packages \n[2] Display Global Tree \n[3] Display specific Tree \n[0] Exit\n")

        try:
            select = int(input("> "))
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select=-1 ##Error handling
        
        ## Function list
        if (select==0):
            break
        if (select==1): 
            structure_tree__first_layer(smali_path)
            input()
        if (select==2): 
            structure_tree__tree(smali_path, apktool_dir)
            input()
        if (select==3):
            try:
                specific_name=input("> Package Name: ")
                d, package_path = structure_tree__min_depth(smali_path, specific_name)
                if d>=0:
                    print("\n"*30)
                    os.system('clear')    
                    print("\n=== APK ARCHITECTURE ===\n\n")
                    structure_tree__tree(package_path, apktool_dir)
                    print("\n\nPackage location: ", package_path.replace(smali_path,""),"\n") 
                else:
                    print("\n/!\ No package found.")
                input()
            except:
                print("Wrong format: return")
            
    os.system('clear')    

def structure_tree__first_layer(path):
    print("\nMain packages:")
    outputfile_Line="\n\n\n==== APK MAIN PACKAGES ====\n\n"
    for item in os.listdir(path):
        print(" -",item)
        outputfile_Line+=" - "+item+"\n"
    outputfile(outputfile_Line)

def structure_tree__min_depth(path, toFind, depth=0):
    global apktool_dir
    smali_path= apktool_dir+"/smali"
    founddepth0=-1
    foundname0=""
    for item in os.listdir(path):
        fullpath = os.path.join(path, item)

        if (item in toFind) and (item == toFind.split("/")[-1]) : 
            return depth, fullpath

        if  os.path.isdir(fullpath):
            founddepth, foundname = structure_tree__min_depth(fullpath, toFind, depth+1)
            if foundname and (founddepth0==-1 or founddepth<founddepth0):   
                foundname0, founddepth0 = foundname, founddepth
    return founddepth0, foundname0

def structure_tree__tree(path, apktool_dir):
    apktool_dir = (apktool_dir+"/smali/").replace("/","\/")
    output = subprocess.check_output(['tree %s | sed "s/\.smali//" | grep -v "\\\\\\$" | sed "s/%s//"' % (path, apktool_dir)], shell=True,  universal_newlines=True)
    print(output)
    outputfile_Line="\n\n\n==== APK TREE ====\n"+output
    outputfile(outputfile_Line)



##################### STOPPED OUTPUT HERE #####################
##################### STOPPED OUTPUT HERE #####################
##################### STOPPED OUTPUT HERE #####################
##################### STOPPED OUTPUT HERE #####################
##################### STOPPED OUTPUT HERE #####################
##################### STOPPED OUTPUT HERE #####################
##################### STOPPED OUTPUT HERE #####################
##################### STOPPED OUTPUT HERE #####################
##################### STOPPED OUTPUT HERE #####################



# STRING SEARCH
def string_search():
    global apktool_dir
    searched_strings=[]

    while True:
        os.system('clear')
        print("\n=== STRING SEARCH ===")
        if searched_strings:print("| Strings = ",searched_strings) 
        else: print("")
        print("\n[1] Specify strings \n[2] Select Network Identifier strings \n[3] Select Audio Recording strings \n[4] Clear Strings")
        if searched_strings: print("[5] Launch String Search on [Resources] \n[6] Launch String Search on [Assets]\n[7] Launch String Search on [Smali Code]\n[0] Exit\n")
        else: print("[/] Launch String Search on [Resources] \n[/] Launch String Search on [Assets]\n[/] Launch String Search on [Smali Code]\n[0] Exit\n")
        try:
            select = int(input("> "))
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select=-1 ##Error handling
        
        ## Function list
        if (select==0):
            break

        if (select==1): 
            print("\n Specify strings to search. Press Enter to stop." )
            searched_strings = searched_strings + string_search__specify()
        if (select==2): ###todo: TO COMPLETE WITH OTHER NETWORK IDENTIFIERS
            searched_strings.append("http:")
            searched_strings.append("www.")
            searched_strings.append("<IP ADDRESS>")
        if (select==3):
            searched_strings.append("<AUDIO RECORD>")

        if (select==4):
            searched_strings=[]
        
        if (select==5 and searched_strings):
            path=apktool_dir+"/res"
            string_search__search(path, searched_strings, 1)
            input()
        if (select==6 and searched_strings):
            path=apktool_dir+"/assets"
            string_search__search(path, searched_strings, 2)
            input()
        if (select==7 and searched_strings):
            path=apktool_dir+"/smali"
            string_search__search(path, searched_strings, 3)
            input()
       
    os.system('clear')    

def string_search__specify():
    specified_searched_strings=[]
    while True:
        try:
            specified_string = input("> ")
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            specified_string="" ##Error handling

        if specified_string=="":
            break
        else: 
            specified_searched_strings.append(specified_string)
    return specified_searched_strings

def string_search__search(path, strings, code=0):
    if not(os.path.isdir(path)):
        if (code==1): print("No resource directory has been found")
        if (code==2): print("No assets directory has been found")
        if (code==3): print("No smali code directory has been found")
        return()
    print("\n"*30)
    os.system('clear')    
    if (code==1): print("\n===== Resources Search  ====="); outputfile_line="\n\n\n==== Resources STRING SEARCH ==== \n\n"
    if (code==2): print("\n===== Assets Search ====="); outputfile_line="\n\n\n==== Assets STRING SEARCH ==== \n\n"
    if (code==3): print("\n===== Code Search ====="); outputfile_line="\n\n\n==== Code STRING SEARCH ==== \n\n"
    print("|| Strings: ", strings, "\n")
    
    for root, dirs, files in os.walk(path):
        for file in files:
            fullFile = os.path.join(root,file)
            found=[]
            for string in strings:
                if (string=="<IP ADDRESS>"):
                    regex=".*([0-9]{1,3}(?:\.|\:)){3}[0-9]{1,3}.*"
                elif (string=="<AUDIO RECORD>"):
                    audio_libs=["android/media/MediaRecorder","android/media/audiorecord"]
                    regex=".*?(invoke-).*?((?:"+"|".join(audio_libs)+")).*?"
                else:
                    regex=".*"+string+".*"
                
                try:    
                    found = found + ["["+string+"]  "+ line for line in open(fullFile)  if re.match(regex,line, re.IGNORECASE)]
                except:
                    None
            if found: 
                print("\n\n|| FOUND IN FILE: ", fullFile,"\n\n"); print('\n'.join([i for i in found[0:]])); print("\n\n")
                outputfile_line+="FOUND IN FILE: "+fullFile+"\n"+'\n'.join([i for i in found[0:]])+"\n\n"
    outputfile(outputfile_line)
    print("Press a key to leave")







# ADB TOOLS
def adb_tool():
    global APK_name
    global APK_dir
    adb_device=''
    while True:
        os.system('clear')
        print("==========\n ADB Tool \n==========")
        if adb_device: print("\nDevice = ", adb_device)
        print("\n[1] Select Device")
        if adb_device:print("[2] Install Application (WIP) \n[3] List packages \n[4] Export an APK \n[5] Export databases \n[6] Modify permissions \n[7] Clear app data \n[8] Take a screenshot \n[9] Logcat \n[10] Microphone\n\n[0] Exit\n")
        else: print("[/] Install Application (WIP) \n[/] List packages \n[/] Export an APK \n[/] Export databases \n[/] Modify permissions \n[/] Clear app data \n[/] Take a screenshot \n[/] Logcat \n[/] Microphone \n\n[0] Exit\n")
        print("[10] Make app debuggable and backupable \n[11] ADB shell")
        try:
            select = int(input("> "))
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select=-1 ##Error handling
        
        ## Function list
        if (select==0):
            break

        if (select==1):             
            adb_device=adb_tool__devices()
        
        if (select==2): 
            if adb_device and check_valid(APK_name):
                adb_tool__install(adb_device, APK_name)
                input()
        if (select==3): 
            if adb_device:
                adb_tool__listPackages(adb_device)
                print("Press a key to exit:")
                input()
        if (select==4): 
            if adb_device:
                adb_tool__exportAPK(adb_device, APK_dir)
                input()
        if (select==5): 
            if adb_device:
                adb_tool__exportDatabase(adb_device, APK_dir)
                input()
        if (select==6): 
            if adb_device:
                adb_tool__modifyPermissions(adb_device)
        if (select==7): 
            if adb_device:
                adb_tool__clearData(adb_device)
        if (select==8): 
            if adb_device:
                adb_tool__screenshot(adb_device, APK_dir)
        if (select==9):
            if adb_device:
                adb_tool__logcat(adb_device)
        if (select==10):
            if adb_device:
                adb_tool__mic_usage(adb_device)


def adb_tool__devices():
    os.system('clear')
    print("\n=== ADB Devices ===\n")
    try: devices = subprocess.check_output('adb devices -l' , shell=True, universal_newlines=True).splitlines()
    except: print("issue when checking devices"); return ''
    head=True; inc=1
    devices_list=[]
    for line in devices:
        if head: 
            print(line)
            if line=="List of devices attached": head=False; print('')
        else: 
            if (line): 
                print ("["+str(inc)+"]", line.split(' ',1)[0])
                inc+=1
                devices_list.append(line.split(' ',1)[0])
            #print (line.split(' ',1)[0], line.split(' ',1)[1])
    text="\nSelect device ('0' to exit): "
    exit=0
    while True:
        try:
            select = int(input(text))
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select=-1 ##Error handling
        if (select==0): return ''
        if (1<=select<inc): return devices_list[select-1]
        else: 
            exit+=1; 
            if (exit>3): break
            else: text="\nWrong value: "


def adb_tool__install(device, apk): 
    try: 
        subprocess.run(['adb', '-s', device, 'install', apk])
        #print("The APK has been installed on the device")
    except: print("issue when installing apk")
    ## Installation cannot work through ADB


def adb_tool__listPackages(device):
    try: output=subprocess.check_output(['adb', '-s', device, 'shell', 'cmd', 'package', 'list', 'packages'], universal_newlines=True)
    except: print("issue when listing packages"); return ''
    outputfile_Line="\n\n\n=== ADB Tool - Packages ===\n\n"+output
    outputfile(outputfile_Line)
    print(output)
    return output


def adb_tool__exportAPK(device, dir):
    print("\n"*30)
    os.system('clear') 
    print("PACKAGES LIST:\n\n")
    packages=adb_tool__listPackages(device)
    if (packages==''): return 
    found=False
    while True:
        try:
            select = input('\nPackage name: ')
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select='' ##Error handling
        if (select==''): break
        if (select.startswith('package:')): select=select.replace('package:','')
        for line in packages.splitlines():
            if "package:"+select == line: found=True;  break
        
        if not(found): print("Package not found"); 
        else: 
            try: 
                path= subprocess.check_output(['adb', '-s', device, 'shell', 'pm', 'path', select], universal_newlines=True).strip().replace('package:','')
                name=select.rsplit('.', 1)[-1]+".apk"
                subprocess.run(['adb', '-s', device, 'pull', path, dir+'/exported_'+name])
            except: print("issue when exporting APK"); return 
            print("\nThe APK has been exported in "+dir)
            outputfile_Line="\n\n\n=== ADB Tool - Export APK ===\n"+"The \""+select+"\" APK has been exported in "+dir
            outputfile(outputfile_Line)
            break


def adb_tool__exportDatabase(device, dir):
    ## This tool uses the ADB tool ABD_BACKUP
    print("\n"*30)
    os.system('clear') 
    print("PACKAGES LIST:\n\n")
    packages=adb_tool__listPackages(device)
    if (packages==''): return 
    found=False
    while True:
        try:
            select = input('\nPackage name: ')
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select='' ##Error handling
        if (select==''): break
        if (select.startswith('package:')): select=select.replace('package:','')
        for line in packages.splitlines():
            if "package:"+select == line: found=True;  break
        
        if not(found): print("Package not found"); 
        else: 
            try: 
                print(select)
                print("\n###\n==> The phone needs to be uncloked.\n==> You will be prompted to choose a Backup Password, please leave the password blank.\n###")
                dir_path = os.path.dirname(os.path.realpath(__file__))
                 
                subprocess.run(['bash', dir_path+'/adb_backup.sh', '-f', dir ,'-p', select , '-d', device ],stdout=subprocess.DEVNULL)
            except: print("issue when exporting Backup"); return 
            
            
            DBdir=dir+'/backup_'+select+'/db'
            
            if not os.path.isdir(DBdir): print("No database has been found"); break
            else: 
                DBFiles = [f for f in os.listdir(DBdir) if os.path.isfile(os.path.join(DBdir, f))]
                if(DBFiles):
                    print("\n\nFound Databases:") 
                    outputfile_Line="\n\n\n=== ADB Tool - Databases ===\n"+"Package: "+select+" \n"
            
                    for f in DBFiles: 
                        print("   "+f)
                        outputfile_Line+="\n-  "+f
                    outputfile(outputfile_Line)
                    subprocess.run(['mv', DBdir, dir+'/databases_'+select])

           


            break


def adb_tool__modifyPermissions(device):
    print("\n"*30)
    os.system('clear') 
    print("PACKAGES LIST:\n\n")
    packages=adb_tool__listPackages(device)
    print("[*] Reset all the permissions")
    if (packages==''): return 
    found=False
    while True:
        try:
            select = input('\nPackage name: ')
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select='' ##Error handling
        if (select==''): break

        if (select=="*"):
            adb_tool__modifyPermissions__all(device)
            break 


        if (select.startswith('package:')): select=select.replace('package:','')
        package_name=select
        for line in packages.splitlines():
            if "package:"+select == line: found=True;  break
        
        if not(found): print("Package not found"); 
        else: 
            try: 
                ## Getting the LIST of Permissions
                dumpsys= subprocess.check_output('adb -s '+ device+' shell dumpsys package '+select, shell=True).decode('utf-8').strip('\n')

                permstring= re.search('requested permissions:(.*)install permissions:', dumpsys, re.DOTALL)

                if not permstring: print("No permissions found"); break
                else: 
                    # permLIST_all = list of all permissions
                    # permLIST_granted = list of all granted permissions
                    # permLIST = list of permissions + GRANT yes/no
                    permLIST=[]
                    permLIST_granted=[]

                    permLIST_all=permstring.group(1).split('\n')[1:-1]
                    for perm in permLIST_all: perm=perm.replace(' ','')
                    
                    permLIST_granted = [line.replace(' ','').replace(':granted=true','') for line in dumpsys.split('\n') if "granted=true" in line]

                    for i in range(len(permLIST_all)):
                        permLIST_all[i]=permLIST_all[i].replace(' ','')
                        if permLIST_all[i] in permLIST_granted: 
                            permLIST.append([permLIST_all[i],1])
                        else: 
                            permLIST.append([permLIST_all[i],0])
            except: print("issue when finding/merging permissions: ",sys.exc_info()[0]); break 


            # Menu to select the permissions to toggle
            while True:
                try:
                    print("\n"*30); os.system('clear') 
                    print("Permissions for the package: "+package_name+"\n")
                    for i in range(len(permLIST)):
                        if permLIST[i][1]: print("|ON     ["+str(i+1)+"] " + permLIST[i][0])
                        else: print("|OFF    ["+str(i+1)+"] " +permLIST[i][0])
                except: print("issue when printing permissions: ",sys.exc_info()[0]); break 

                try:
                    select = input('\n\nToggle Permission (Enter to leave): ')
                except KeyboardInterrupt:
                    sys.exit(1) 
                except:
                    select='' ##Error handling
                if (select==''): break

                else: 
                    try: 
                        select=int(select)-1
                        if (0<= int(select) < len(permLIST)): 
                            chosen_permission=permLIST[select][0]
                            if permLIST[select][1]: 
                                ret = adb_tool__modifyPermissions__revoke(device, package_name, chosen_permission)
                            else: 
                                ret = adb_tool__modifyPermissions__grant(device, package_name, chosen_permission)
                            if ret: permLIST[select][1]=int(not(permLIST[select][1]))
                    except:
                        print ("issue on value type / on modifying permissions")
            
            break

def adb_tool__modifyPermissions__all(device):
    try: 
        subprocess.run('adb -s '+ device+' shell pm reset-permissions' , shell=True)
        input("\n=> All the permissions have been reset ")
    except: input("Issue when reseting permissions ");  

def adb_tool__modifyPermissions__revoke(device, package, permission):
    #print("\nRevocking:")
    #print("device",device)
    #print("package",package)
    #print("permission", permission)
    try:
        process = subprocess.Popen(["adb -s "+device+" shell pm revoke "+package+" "+ permission],shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out, err = process.communicate()
        if err:
            input("\nERROR: This permission cannot be revocked " )
            return 0
        else:  return 1
    except: print("issue revocking"); return 0

def adb_tool__modifyPermissions__grant(device, package, permission):
    #print("\nGranting:")
    #print("device",device)
    #print("package",package)
    #print("permission", permission)
    try:
        process = subprocess.Popen(["adb -s "+device+" shell pm grant "+package+" "+ permission],shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out, err = process.communicate()
        if err:
            input("\nERROR: This permission cannot be granted ")
            return 0
        else:  return 1
    except: print("issue granting"); return 0


def adb_tool__clearData(device):
    print("\n"*30)
    os.system('clear') 
    print("PACKAGES LIST:\n\n")
    packages=adb_tool__listPackages(device)
    if (packages==''): return 
    found=False
    while True:
        try:
            select = input('\nPackage name: ')
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select='' ##Error handling
        if (select==''): break



        if (select.startswith('package:')): select=select.replace('package:','')
        package_name=select
        for line in packages.splitlines():
            if "package:"+package_name == line: found=True;  break
        
        if not(found): print("Package not found"); 
        else: 
            try: 
                process = subprocess.Popen(["adb -s "+device+" shell pm clear "+package_name],shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                out, err = process.communicate()
                if err:
                    input("\n\nERROR: Cannot clear the data " )
                else:
                    input("\n\n=> "+package_name+ " data has been cleared ")
            except: print("Issue when clearing data")
            break


def adb_tool__screenshot(device, dir):
    try:
        if not(os.path.exists(dir+"/screenshots")):
            os.mkdir(dir+"/screenshots")
        #print(dir)
        
        name = datetime.datetime.now().strftime("%d-%m-%y_%H:%M:%S.png")
        process = subprocess.Popen(["adb -s "+device+" shell screencap /sdcard/"+name+"; adb -s "+device+ " pull /sdcard/"+name+" "+dir+"/screenshots/"+name+"; adb -s "+device+" shell rm -f /sdcard/"+name],shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out, err = process.communicate()
        if err:
            input("\n\nERROR: Cannot take screenshot " )
            print(err)
        else:
            input("\n=> Screenshot ["+name+"] saved in "+APK_dir+'/screenshots/')
    except: print("Issue when taking screenshot")


def adb_tool__logcat(device):
    logcat_strings=[]
    while True:
        os.system('clear')
        print("== Logcat ==")
        if logcat_strings: print("Logcat search: ",logcat_strings)
        print("\n[1] Logcat values\n[2] Clear values \n[3] Launch \n[0] Exit\n")
        
        try:
            select = int(input("> "))
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select=-1 ##Error handling
        
        ## Function list
        if (select==0):
            break
        if (select==1):
            print("\nValues to search:")
            logcat_strings = logcat_strings + string_search__specify()
        if (select==2):
            logcat_strings = []
        if (select==3):
            if logcat_strings:
                grep = '\|'.join(logcat_strings)
            else:
                grep='.'
            print("\nCtrl+C to terminate")
            time.sleep(2)
            outputfile_Line="\n\n\n=== ADB Tool - Logcat ===\nStrings: "+' - '.join([i for i in logcat_strings[0:]])+ "\n"
            logcat_process = subprocess.Popen(['adb -s '+device+' logcat | grep "'+ grep+'"'], shell=True, stdin=subprocess.PIPE)
            try:
                out = logcat_process.communicate()
            except KeyboardInterrupt:
                logcat_process.terminate()
                ## OUTPUTFILE LOGCAT OUTPUT MISSING
                outputfile(outputfile_Line)


def adb_tool__mic_usage(device):
    try: 
        dump_audio= subprocess.check_output(['adb', '-s', device, 'shell', 'dumpsys', 'audio'], universal_newlines=True).strip('\n')
        
        mic_used=re.search(r'AudioSystem.AudioRecordingCallback(.*?)\n\n',dump_audio, re.DOTALL)
        if(mic_used):
            os.system('clear') 
            print("\n### Microphone usage")
            print(mic_used.group(1))
            last_line=mic_used.group(1).splitlines()[-1]
            if("rec start" in last_line):
                print("\n=> Microphone ("+re.search('src:(.*?) pack',last_line).group(1)+") is being used by the package: "+last_line.partition("pack:")[2])
            else:
                print("\n=> Microphone not being used")
        else:
            print("No microphone usage found")
        input()    
        
    except Exception as e: print("issue when looking at Microphone status"); input();return 
    

            







# API Calls
def API_call():
    global apktool_dir
    path=apktool_dir+"/smali"
    string="android/media/audiorecord"


    strings=["android/media/audiorecord", "android/media/MediaRecorder"]
    for root, dirs, files in os.walk(path):
        for file in files:
            fullFile = os.path.join(root,file)
            found=[]

            for line in open(fullFile):
                regex=".*?(invoke-).*?("+string+").*?"
                try:
                    if re.match(regex,line, re.IGNORECASE): 
                        found = found + ["["+string+"]  "+ line] 
                except:
                    None

            if found: print("\n\n|| CALLED IN FILE: ", fullFile,"\n\n"); print(*found, sep='\n'); print("\n\n")
    
    print("Press a key to leave")
    input()    





if __name__ == "__main__":
    APK_name=""
    APK_dir="."
    apktool_dir=""
    outputlist=[]
    erase_option = True                  
    write_option = True
    # New output file

    DEBUG=False
    DEBUG=True            ######## NULLIFY TO RESET
    if DEBUG: 
        dir_path = os.path.dirname(os.path.realpath(__file__))
        APK_name = dir_path+"/honey.apk"             
        APK_dir = dir_path+"/TEMPDIR"                
        apktool_dir = dir_path+"/TEMPDIR/apktool"    
        erase_option = False  
        outputfile("",False)                
    
    

    
    os.system('clear')       
    main()


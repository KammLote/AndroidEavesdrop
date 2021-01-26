import os
import filetype
import sys
import subprocess
import datetime
import re


def main(): 
    global APK_name
    global apktool_dir
    global APK_dir
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
        print("[1] Import APK")
        if check_valid(APK_name):
            print("[2] Apktool Disassembly")
        else:
            print("[/] Apktool Disassembly")
        if check_valid(apktool_dir):
            print("[3] Package name")
            print("[4] Application Permissions")
            print("[5] Native libraries")
            print("[6] APK Architecture")
            print("[7] String Search")

        else:
            print("[/] Package name")
            print("[/] Application Permissions")
            print("[/] Native libraries")
            print("[/] APK Architecture")
            print("[/] String Search")


        print("[0] Quit")
        print("")
        try:
            select = int(input("> "))
        except KeyboardInterrupt:
            sys.exit(1) 
        except:
            select=-1 ##Error handling

        ## IMPORT APK
        if (select==1):
            res, folder, file = import_apk()
            if res!='' and folder!='' and file!='':      ## In case the user leaves the Import without selecting any
                APK_name = res
                APK_dir = folder
                output_file = file


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


        ###### REMOVE   
        if (select==8):
            structure_tree__tree("honey/smali/tv", "honey\/smali\/")
            input()

        ## QUIT
        if (select==0):
            if check_valid(apktool_dir):
                print("Removing Junk")
                subprocess.run(["rm", "-r", apktool_dir]) 
            os.system('clear')       
            sys.exit(0)

        os.system('clear')   







def check_valid(name):
    if not(name):
        return False
    else:
        return True



def import_apk():
    print("=== Import APK File ===")
    while True:
        apk_name = input('APK file: ')
        # String empty --> go to Main()
        if not apk_name: 
            return '', '', ''
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
        output_dir = datetime.datetime.now().strftime("APK_OUTPUT_%d-%m-%y_%H:%M")
        subprocess.run(["mkdir", output_dir])
        print("The APK "+apk_name+ " has been imported")      
        # CREATING OUTPUT FILE
        output_file=output_dir+"/output.txt"
        outFile=open(output_file,'w+')
        outFile.write("============================================\nAnalysis tool for Android Eavesdropping apps\n============================================\n")
        outFile.close()
        input()    
        os.system('clear')       
        return apk_name, output_dir, output_file
    except:
        print("Issue when creating the Output directory: ")
        input()
        return '', '', ''


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
        outFile=open(APK_dir+"/output.txt",'a+')
        outFile.write("\n=====PERMISSIONS=====\n")
        for line in file:
            if "uses-permission" in line:
                myLine= line.replace('    <uses-permission android:name="', '').replace('"/>\n', '')
                print(myLine)
                outFile.write(myLine)
                outFile.write("\n")
        outFile.close()
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
        outFile=open(APK_dir+"/output.txt",'a+')
        outFile.write("\n=====PACKAGE=====\n")
        first_line=file.readline()
        first_line=first_line[first_line.find('package="'):]
        first_line=first_line[first_line.find('"'):]
        first_line=first_line[:first_line.find('" ')][1:]
        print(first_line)
        outFile.write(first_line)
        outFile.write("\n")
        outFile.close()
    input()    
    os.system('clear')       


    
# NATIVE FILES IN MANIFEST
def list_native_lib():

    global apktool_dir
    libraries_dir = apktool_dir+"/lib"
    if not(os.path.isdir(libraries_dir)):
        print("No Library has been found"); input(); return()
    print("\n===== Native Libraries =====\n")

    files = subprocess.check_output('find '+ libraries_dir+ ' -type f', shell=True, universal_newlines=True).splitlines()
    counter=0
    library_list=[]
    for line in range (len(files)):
        file=files[line]
        counter+=1
        print("["+str(counter)+"]\nName: "+file.replace(apktool_dir+'/',''), "\nSize: ", os.stat(file).st_size,'\n')
        library_list.append(file)
    

    try:
        while True:
            lib_num=int(input("\nInput name for Disassembly (Enter to exit): "))
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
            subprocess.run(['rm', filename])
            break
        if (select==1): 
            binary_disassembly__list(filename)
        if (select==2): 
            binary_disassembly__cfg(filename)
            
    os.system('clear')     

def binary_disassembly__list(filename):
    subprocess.run(['./radare2.sh -n %s -l' % filename], shell=True)
    input("Press a key to leave ")

def binary_disassembly__cfg(filename):
    subprocess.run(['./radare2.sh -n %s -c' % filename], shell=True)
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
    for item in os.listdir(path):
        print(" -",item)

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
    subprocess.run(['tree %s | sed "s/\.smali//" | grep -v "\\\\\\$" | sed "s/%s//"' % (path, apktool_dir)], shell=True)




# STRING SEARCH
def string_search():
    global apktool_dir
    searched_strings=[]

    while True:
        os.system('clear')
        print("\n=== STRING SEARCH ===")
        if searched_strings:print("| Strings = ",searched_strings) 
        else: print("")
        print("\n[1] Specify strings \n[2] Select Network Identifier strings \n[3] Clear Strings\n[/]\n[4] Launch String Search on [Resources] \n[5] Launch String Search on [Assets]\n[6] Launch String Search on [Smali Code]\n[/]\n[0] Exit\n")

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
            searched_strings=[]
        
        if (select==4 and searched_strings):
            path=apktool_dir+"/res"
            string_search__search(path, searched_strings, 1)
            input()
        if (select==5 and searched_strings):
            path=apktool_dir+"/assets"
            string_search__search(path, searched_strings, 2)
            input()
        if (select==6 and searched_strings):
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
    if (code==1): print("\n===== Resources Search  =====")
    if (code==2): print("\n===== Assets Search =====")
    if (code==3): print("\n===== Code Search =====")
    print("|| Strings: ", strings, "\n")
    #strings=["http", "www."] ## TO REMOVE
    #strings = ["[IP ADDRESS]"] ## TO REMOVE
    for root, dirs, files in os.walk(path):
        for file in files:
            fullFile = os.path.join(root,file)
            found=[]
            for string in strings:
                if (string=="<IP ADDRESS>"):
                    regex=".*([0-9]{1,3}(?:\.|\:)){3}[0-9]{1,3}.*"
                else:
                    regex=".*"+string+".*"
                try:    
                    found = found + ["["+string+"]  "+ line for line in open(fullFile)  if re.match(regex,line, re.IGNORECASE)]
                except:
                    None
            if found: print("\n\n|| FOUND IN FILE: ", fullFile,"\n\n"); print(*found, sep='\n'); print("\n\n")
    print("Press a key to leave")





if __name__ == "__main__":
    APK_name=""
    APK_dir=""
    apktool_dir=""
    #APK_name = "honey.apk"             ######## NULLIFY TO RESET
    #APK_dir = "TEMPDIR"                ######## NULLIFY TO RESET
    #apktool_dir = "TEMPDIR/apktool"    ######## NULLIFY TO RESET
    #cant_leave = True                  ######## NULLIFY TO RESET

    
    os.system('clear')       
    main()

import os
import filetype
import sys
import subprocess


def main(): 
    global APK_name
    global apktool_dir
    while True:
        print("============================================")
        print("Analysis tool for Android Eavesdropping apps")
        print("============================================")        
        if check_valid(APK_name):
            print("APK: "+APK_name)
        if check_valid(apktool_dir):
            print("Apktool Dir: "+apktool_dir+"/")

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
        else:
            print("[/] Package name")
            print("[/] Application Permissions")
            print("[/] Native libraries")
        print("[0] Quit")
        print("")
        select = int(input("> "))

        ## IMPORT APK
        if (select==1):
            res = import_apk()
            if res!='':             ## In case the user leaves the Import without selecting any
                APK_name = res

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
                native_lib()



        if (select==0):
            if check_valid(apktool_dir):
                print("Removing Junk")
                os.system("rm -r "+ apktool_dir) 
            os.system('clear')       
            sys.exit(0)



def import_apk():
    print("=== Import APK File ===")
    while True:
        apk_name = input('APK file: ')
        # String empty --> go to Main()
        if not apk_name:
            os.system('clear')       
            return ''
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
    print("The APK "+apk_name+ " has been imported")          
    input()    
    os.system('clear')       
    return apk_name



def check_valid(name):
    if not(name):
        return False
    else:
        return True




# APKTOOL DISASSEMBLY
def apktool_disass():
    global APK_name
    try:
        os.system("apktool -f d "+ APK_name)
    except:
        print("ERROR running APKTOOL")
    all_subdirs = [d for d in os.listdir('.') if os.path.isdir(d)]
    latest_subdir = max(all_subdirs, key=os.path.getmtime)
    print (latest_subdir)
    print("\nAPKTOOL disassembled the APK in subdirectory: "+latest_subdir)
    input()    
    os.system('clear')   
    return latest_subdir



# PERMISSIONS CHECK IN MANIFEST
def manifest_permissions():
    global apktool_dir
    global output_file
    manifest=apktool_dir+"/AndroidManifest.xml"
    if not os.path.isfile(manifest):
        print("No manifest found")
        return

    print("\n===== Permissions =====")
    with open(manifest, 'r') as file:
        outFile=open(output_file,'w')
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

#### Not in Use
# PACKAGE CHECK IN MANIFEST
def manifest_package():
    global apktool_dir
    global output_file
    manifest=apktool_dir+"/AndroidManifest.xml"
    if not os.path.isfile(manifest):
        print("No manifest found")
        return

    print("\n===== Package name =====")
    with open(manifest, 'r') as file:
        outFile=open(output_file,'w')
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
def native_lib():

    global apktool_dir
    global output_file
    libraries_dir = apktool_dir+"/lib"
    print("\n===== Native Libraries =====\n")

    files = subprocess.check_output('find '+ libraries_dir+ ' -type f', shell=True, universal_newlines=True).splitlines()
    for line in range (len(files)):
        file=files[line]
        print("Name: "+file.replace(apktool_dir+'/',''), "\nSize: ", os.stat(file).st_size,'\n')
    input()    
    os.system('clear')       


    







if __name__ == "__main__":
    APK_name=""
    apktool_dir=""
    #APK_name = "honey"      ############# NULLIFY TO RESET
    #apktool_dir  = "honey.out"  ############# NULLIFY TO RESET

    output_file="output.txt"
    os.system('clear')       
    main()


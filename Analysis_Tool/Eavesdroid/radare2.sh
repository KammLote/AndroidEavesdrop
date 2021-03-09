### DISCLAIMER ###
# The tool reaches $r2 or $radare2
# These are symbolic links to /Users/***/Documents/TOOLS/Radare2/radare2/binr/radare2/radare2 
# Modify the SymLink of $r2 or $radare2 in case radare2 does not answer.



usage() { echo "Usage: $0  [-l|--list] [-c|--callgraph] [-f|--function <function_name>	] [-h|--help]  -n|--name <file_name> " 1>&2; 
            echo "    -h | --help                          Display this help message."
            echo "    -n | --name <file_name>              Choose the file."
            echo "    -l | --list                          Display the functions list."
            echo "    -c | --callgraph                     Display the Global Callgraph."
            echo "    -f | --function <function_name>      Create the Functions callgraph. Display a specific Function Callgraph. "
            echo '                                         "--function null " for not displaying any function '
            exit 1; }  


dir_check(){
	if [ ! -d "$1" ]; then
	  mkdir $1 
	fi
}
### CAUTION: "sed -l" was used for the previous version for Linux (not on MacOS)
list_func() {
    r2 -q -A -c 'afll' ${file} 2>&- | sed  "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g" | awk '{print $1  " " $15}' | tail -n +3 
}

callgraph_func(){
    dir=${file}_CFG
	dir_check $dir
    r2 -q -A -c 'agCd' ${file} 2>&-	> ${dir}/CG.dot
    dot -Tpng ${dir}/CG.dot -o ${dir}/callgraph.png;  open ${dir}/callgraph.png; rm ${dir}/CG.dot # xdg-open ${dir}/callgraph.png ||
}

function_func(){
    dir_check output 
	dir_check $dir
   
    list_func  |  xargs -l bash -c 'r2 -q -A -c "s $0; agfd > output/$1.dot" TarteTatin 2>&-; 
                                        dot -Tpng output/$1.dot > output/$1.png; 
                                            convert output/$1.png -resize 400x400 output/$1.png'
    mv output/*.png $dir
    rm -r output
}

CFG=0
List=0
Func=1
Fct=0


## Transform long options to short ones
for arg in "$@"; do
  shift
  case "$arg" in
    "--help") set -- "$@" "-h" ;;
    "--list") set -- "$@" "-l" ;;
    "--name") set -- "$@" "-n" ;;
	"--callgraph") set -- "$@" "-c" ;;
	"--function") set -- "$@" "-f" ;;
    *)        set -- "$@" "$arg"
  esac
done

## Handle options
while getopts ":n:lhcf:f" o; do
    case "${o}" in
        n|-name)  file=${OPTARG}
            ;;
        f)  Fct=1; fct=${OPTARG}
           ;;
        c)  CFG=1 ;;    
        l)  List=1;;
        h) usage;;       *)
            echo "Invalid option: -$OPTARG" 1>&2
            usage
          ;;
    esac
done
shift $((OPTIND-1))



if [ -z "${file}" ] ; then
    usage
fi
if [ ! -f "${file}" ]; then
    echo "Cannot find  ${file}" 1>&2
    exit 1
fi


if [ $List = 1 ]; then 
    echo " "
	echo "=== Functions List ==="
    list_func
    echo " " 

fi

if [ $CFG = 1 ]; then
    echo " "
	echo "=== Glogal Callgraph ==="
    callgraph_func
    echo "Global callgraph saved at: ./${dir}/callgraph.png"
    echo " " 
fi

if [ $Fct = 1 ]; then
    echo " "
    echo "=== Functions CFG ==="
    dir=${file}_CFG
    function_func

    if [ -f "$dir/${fct}.png" ] 
        then
        echo " CFG of $fct saved at: ./${dir}/${fct}.png"
        xdg-open $dir/${fct}.png
        else
            if [[ "$fct" == "null" ]]; then
            echo " all CFGs saved at: ./${dir}/ "
            else
            echo " cannot find in $file the function: $fct"
            fi
    fi 
    echo " "
fi


usage() { echo "Usage: $0  [-f] directory   [-d] device   [-p] package" 1>&2; 
    
            exit 1; }  



while getopts f:d:p: flag
do
    case "${flag}" in
        f) dir=${OPTARG};;
        d) device=${OPTARG};;
        p) package=${OPTARG};;
    esac
done

if [ -z "$dir" ] || [ -z "$device" ] || [ -z "$package" ]
then
    usage
else
    adb -s $device  backup -f $dir/backup.ab -noapk $package

    dd if=$dir/backup.ab bs=1 skip=24 | python2 -c "import zlib,sys;sys.stdout.write(zlib.decompress(sys.stdin.read()))" > $dir/backup.tar
    # python3 -> python2
    tar xvf $dir/backup.tar -C $dir/
    mv $dir/apps/$package $dir/backup_$package
    rm -r $dir/backup.tar $dir/backup.ab $dir/apps
fi
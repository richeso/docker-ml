#!/bin/bash

get_script_dir () {
     SOURCE="${BASH_SOURCE[0]}"
     # While $SOURCE is a symlink, resolve it
     while [ -h "$SOURCE" ]; do
          DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
          SOURCE="$( readlink "$SOURCE" )"
          # If $SOURCE was a relative symlink (so no "/" as prefix, need to resolve it relative to the symlink base directory
          [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
     done
     DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
     echo "$DIR"
}

srcscript="${BASH_SOURCE[0]}"
basedir=$(get_script_dir)
cd $basedir
echo ">>> basedir of invocation script: $srcscript is $basedir with arguments: $1 $2 $3 $4 "
echo ">>> SCRIPT running under userid:" 
echo `whoami`


echo "===> Executing  "
## this runs the specified script passed from the command line inside the docker mongodb container

#docker exec -i mymongodb1 bash <<EOF

## initialize crontab
#cron
#crontab /tmp/backup/scripts/backupmongo.cron
#exit
#EOF
python /home/models/tutorials/image/imagenet/classify_image.py $1 $2
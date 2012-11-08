#!/bin/bash

dbuser="root"
dbpass="kode"
dbhost="localhost"
webroot=/home/vineet/public_html/projects/kodecrm_platforms
webhost="http://projects.kp/kodecrm_platforms"

ocver="1.5.1.3.1"

# original working directory
OPWD=`pwd`

# build the kodecrm module first
./build.sh


# get positional args and override above vars if provided
while [ "$1" != "" ]; do
    case $1 in
        -u | --user )    shift
                         dbuser=$1
                         ;;
        -p | --pass )    shift
                         dbpass=$1
                         ;;
        -h | --host )    shift
                         dbhost=$1
                         ;;
        -w | --webroot ) shift
                         webroot=$1
                         ;;
        -w | --webhost ) shift
                         webroot=$1
                         ;;
    esac
    shift
done

instdir=opencart_v$ocver


echo "Changing directory to the webroot: $webroot.."
cd $webroot
sudo rm -rf $instdir

echo "Getting, preparing source code"
if [ -f opencart_v$ocver.zip ]
then
    echo "Opencart $ocver zip file already exists"
else
    wget http://opencart.googlecode.com/files/opencart_v$ocver.zip
fi


mkdir $instdir
echo "Changing directory opencart installation directory.."
cd $instdir
cp ../opencart_v$ocver.zip .

echo "Extracting opencart files"
unzip -q opencart_v$ocver.zip

mv upload/* upload/.htaccess.txt .
rmdir upload
chmod o+w -R download image system/cache system/logs
chmod o+w config.php admin/config.php

echo "Setting up new database..."
dt=`date +'%m%d%Y'`
dbname=`echo opencart_$ocver_kodecrm_$dt`

drop="DROP DATABASE $dbname"
mysql -u ${dbuser} -h ${dbhost} -p${dbpass} -e "$drop"
create="CREATE DATABASE $dbname;"
mysql -u $dbuser -h $dbhost -p$dbpass -e "$create"
echo "Database created: $dbname"

echo "Copying opencart command line installation script to install dir"
cp $OPWD/cli_install.php ./install/

echo "Changing directory to opencart install dir and running the cli tool"
cd ./install

php cli_install.php install --db_host "$dbhost" \
        --db_user "$dbuser" \
        --db_password "$dbpass" \
        --db_name "$dbname" \
        --username admin \
        --password admin \
        --email youremail@example.com \
        --agree_tnc yes \
        --http_server "$webhost/$instdir/"

echo "DONE.. Now add kodecrm files and test with/without vqmod"
echo "Thank you!"

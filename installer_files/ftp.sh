#!/bin/sh

#Retrieve lastnb.txt
HOST='shares-fr.talend.lan'
USER='nightly'
PASSWD='talend'
FILE='lastnb.txt'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
passive
cd nightly_builds
get $FILE
quit
END_SCRIPT

#Parse lastnb.txt
BRANCH_NB=$(cat $FILE | grep $1 | head -1)
LAST_NB=$(echo $BRANCH_NB | cut -d "/" -f 5)

echo $BRANCH_NB
echo $LAST_NB

#Get Installer files by ftp

DIST_FILE=dist
INSTALLER_EXEC_FILE=Talend-Installer-Starter*
LICENSES_ZIP_FILE=licenses_600_30days_5users*

ftp -n -v $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
passive
cd nightly_builds
cd $LAST_NB
binary
prompt
mget $INSTALLER_EXEC_FILE
mget $DIST_FILE
mget $LICENSES_ZIP_FILE
quit
END_SCRIPT


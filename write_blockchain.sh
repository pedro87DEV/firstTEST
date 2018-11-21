#! /bin/bash
#########################################################################
#
# Script di transfer file SCT - ICBPI da SMART a Universal Access 
#
# Realizzato il 29/11/2016 da Mattia Pedroncelli  
#
##########################################################################


########################################################################## 
# DEFINIZIONE VARIABILI UTILIZZATE NELLO SCRIPT
##########################################################################
TIMESTAMP=`date +%Y%m%d-%H%M%S`
DIR_TO_CONVERT='/home/smart/SVIL/PEDRO/file_to_convert'
FILE_CONVERTED='/home/smart/SVIL/PEDRO/file_sha_converted'


echo -n “Inserisci il nome file da convertire“
read FILE_TO_CONVERT 


##########################################################################
# HASHING
# CONVERSIONE FILE IN STRINGA FORMATO SHA256
##########################################################################

#echo -n $FILE_TO_CONVERT | sha256sum >> $FILE_CONVERTED


sha256sum $DIR_TO_CONVERT/$FILE_TO_CONVERT >> $FILE_CONVERTED'_'$TIMESTAMP.txt

JAVA_HOME=/usr/lib/jvm/jdk1.6.0_02 
CLASSPATH=/home/freddy/myapp/lib/whatever.jar

$JAVA_HOME/bin/java -cp $CLASSPATH MyJavaClass 
exit 0

 

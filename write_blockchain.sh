#! /bin/bash
#########################################################################
#
# Script per scrittura messaggio sulla blockchain
# Realizzato da Mattia Pedroncelli  
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
# Viene generato in output un file contenente la stringa 
##########################################################################

sha256sum $DIR_TO_CONVERT/$FILE_TO_CONVERT >> $FILE_CONVERTED'_'$TIMESTAMP.txt

##########################################################################
# Lancio dello script Python
##########################################################################

python /home/smart/SVIL/PEDRO/send-OP_RETURN.py

 

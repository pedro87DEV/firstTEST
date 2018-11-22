#! /bin/bash
#########################################################################
#
# Script per scrittura messaggio sulla blockchain
# Realizzato da Mattia Pedroncelli  
#
##########################################################################


########################################################################## 
# DEFINIZIONE VARIABILI UTILIZZATE NELLO SCRIPT
# Parametrizzare le variabili 
##########################################################################
TIMESTAMP=`date +%Y%m%d-%H%M%S`
DIR_FILE_TO_CONVERT='/home/smart/SVIL/PEDRO/file_to_convert'
DIR_FILE_WRITE='/home/smart/SVIL/PEDRO/file_write_blockchain_done'

 
for i in $(ls $DIR_FILE_TO_CONVERT);

  do

  ########################################################################################################
  # HASHING
  # CONVERSIONE FILE IN STRINGA FORMATO SHA256
  # Viene generato in output un file contenente una stringa hash per ogni riga relativa al file criptato
  ########################################################################################################

   sha256sum $DIR_FILE_TO_CONVERT/$i >> file_sha_hashed'_'$TIMESTAMP.txt
  

  ##########################################################################
  # Lancio dello script Python
  ##########################################################################

   python store-OP_RETURN.py 'PROVA'

  done

 

#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOWN="\033[0;33m"
RESET="033[0M"
 



# revisar que sea usuario root
if [[ 0 != $UID ]]
then 
        #Inicnio elcodigo de color con red, luego los elimino con reset
	echo -e ${RED}usted debe ser root para correr este script${RESET}"
	exit 1
fi

echo Hola $USER



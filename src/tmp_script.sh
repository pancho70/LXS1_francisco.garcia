#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
RESET="\033[0m"
 

# revisar que el usuario no sea root
if [[ 0 == $UID ]]
then 
        #Inicnio elcodigo de color con red, luego los elimino con reset
	echo -e ${RED}usted no debe root para correr este script${RESET}"
	exit 1
fi

#obtencion de informacion

echo -en "escriba su nombre completo > "
read NOMBRE
  
echo -en "escriba su correo electronico"
read EMAIL

echo -en "hola $NOMBRE, este es su correo [${GREEN}$EMAI${RESET}]? [s/n]: "
read RESP

if [[ s == $RESP ]]

then

	echo hola $NOMBRE, su correo es $EMAIL

fi

echo -en 
sudo su - estudiantes -c "git config --global user.name \"$NOMBRE""
sudo su - estudiantes -c "git config --global user.email \"$EMAIL""
sudo su - estudiantes -c "git config --global core.editor vim"



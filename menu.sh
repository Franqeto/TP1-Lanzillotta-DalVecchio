#!/bin/bash

if [ "$1" == "-d" ]; then
    pkill -f consolidar.sh
    rm -rf ~/EPNro1
    echo "Entorno eliminado y procesos terminados"
    exit 0
fi

if [ -z "$FILENAME" ]; then
    echo "Error: la variable FILENAME no está definida"
    exit 1
fi

while true; do
	echo " "
	echo "MENU:"
	echo "1) Crear entorno"
	echo "2) Correr proceso"
	echo "3) Mostrar contenido del archivo"
	echo "4) Mostrar 10 notas mas altas"
	echo "5) Solicitar número de padron"
	echo "6) Salir"
	echo "   "
	echo "Ingrese la opción del menú:"
	read opcion

	case $opcion in
		1)
		mkdir -p ~/EPNro1/entrada ~/EPNro1/salida ~/EPNro1/procesado
		cp ~/consolidar.sh ~/EPNro1/
		echo "Entorno creado"
		;;
		2)
		bash ~/EPNro1/consolidar.sh &
		echo "Proceso iniciado en background"
		;;
		3)
		if [ -e ~/EPNro1/salida/$FILENAME.txt ]; then
			sort -k1 -n ~/EPNro1/salida/$FILENAME.txt
		else
			echo "El archivo $FILENAME.txt no existe"
		fi
		;;
		4)
		if [ -e ~/EPNro1/salida/$FILENAME.txt ]; then
                        sort -k5 -n -r ~/EPNro1/salida/$FILENAME.txt | head -10
                else
                        echo "El archivo $FILENAME.txt no existe"
                fi
		;;
		5)
		echo "Ingrese un numero de padron:"
		read padron
		grep "^$padron " ~/EPNro1/salida/$FILENAME.txt
		;;
		6)
		echo "Saliendo..."; exit 0
		;;
		*)
		echo "Opcion invalida, seleccione una de las opciones del menu."
		;;
	esac
done

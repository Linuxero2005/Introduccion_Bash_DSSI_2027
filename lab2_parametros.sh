#!/bin/bash

# mostrar información de los parámetros
echo "Nombre del script: $0"
echo "Cantidad total de parámetros: $#"
echo "Lista de parámetros: $@"

#validación
if [ "$#" -lt 2 ]; then
	echo "Uso: $0 <origen> <destino>"
	exit 1
fi

#verificación de archivo inexistente y su redireción
ls  archivo_inexistente.txt 2> error.log

#imprimir código de salida usando $?
echo "Código de salida del comando (error): $?"

#!/bin/bash

# verificación de la ruta ingresada
if [ "$#" -ne 1 ]; then
	echo "Error: se debe ingresar una ruta como argumento" >&2
	echo "Ejemplo: $0 <ruta_archivo_o_directorio>"
	exit 1
fi

ruta="$1"

# validación de ruta utilizando -e
if [ ! -e "$ruta" ]; then
	echo "Error: la ruta '$ruta' no existe"
	exit 1
fi

echo "La ruta '$ruta' existe"

# validación de ruta/archivo con -f
if [ -f "$ruta" ]; then
	echo "Es un archivo regular"
elif [ -d "$ruta" ]; then
	echo "Es un directorio"
else 
	echo "Es otro tipo de archivo"
fi

# validación de permite permisos de lectura -r

if [ -r "$ruta" ]; then
	echo "Contiene permisos de lectura"
else
	echo "No contiene permisos de lectura"
fi

# validación de permisos de escitura -w

if [ -w "$ruta" ]; then
	echo "Contiene permisos de escritura"
else
	echo "No contiene permisos de escritura"
fi

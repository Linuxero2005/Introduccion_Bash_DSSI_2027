#!/bin/bash

# ruta del directorio de respaldo
dir_respaldo="./respaldo_logs"

# definir fecha actual
fecha=$(date +%Y-%m-%d)

# contador de archivos procesados
contador=0

# creación del primer directorio de respaldo si no existe usando &&
mkdir -p "$dir_respaldo" && echo "Directorio respaldado en: $dir_respaldo"
echo "Buscando archivos con extensión .log en el directorio acutal"

# busqueda de archivos con extensión .log
for archivo in *.log; do
	# verificación de que el archivo exista
	if [ -f "$archivo" ]; then
		# se copia al directorio de respaldo agregando al fecha y uso de && para que el
		# contador aumente
		cp "$archivo" "$dir_respaldo/${fecha}_{$archivo}" && {
			echo "Archivo copiado: $archivo ${fecha}_$archivo"
			((contador++))
		}
	fi
done

# información de archivos
echo "Total de archivos .log $contador"

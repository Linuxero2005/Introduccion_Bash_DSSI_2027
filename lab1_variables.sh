#!/bin/bash

# creación de variables
app="backup"
version=2
usuario_actual=$(whoami)

#texto que usa las variables
echo "Procesando ${app}_v${version}.tar.gz"

#imprime texto usando comillas simples y dobles
echo "La cadena Ruta ${HOME}"
echo 'La cadena Ruta ${HOME}'

#imprime resultado de comando whoami
echo "Usuario actual: ${usuario_actual}"


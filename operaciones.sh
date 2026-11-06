#!/bin/bash

# verificación de los dos argumentos

if [ "$#" -ne 2 ]; then
	echo "Error: se deben ingresar dos números enteros." >&2
	echo "Uso: $0 <numero1> <numero2>" >&2
	exit 1
fi

# Expresión regular para validar si una cadena es un número entero (positivo o negativo)
re='^-?[0-9]+$'

# Validar si el primer argumento no es un número entero
if ! [[ $1 =~ $re ]]; then
    echo "Error: El primer argumento '$1' no es un número entero válido." >&2
    exit 1
fi

# Validar si el segundo argumento no es un número entero
if ! [[ $2 =~ $re ]]; then
    echo "Error: El segundo argumento '$2' no es un número entero válido." >&2
    exit 1
fi

# Asignar los parámetros de posición a variables legibles
num1=$1
num2=$2

# Calcular operaciones utilizando evaluación aritmética
suma=$((num1 + num2))
diferencia=$((num1 - num2))
producto=$((num1 * num2))

# Imprimir los resultados en pantalla
echo "--- Resultados de las operaciones ---"
echo "Suma: $num1 + $num2 = $suma"
echo "Diferencia: $num1 - $num2 = $diferencia"
echo "Producto: $num1 * $num2 = $producto"




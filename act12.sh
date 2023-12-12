#!/bin/bash


read -p "Ingrese la cantidad de números aleatorios a generar: " cantidad_numeros

read -p "Ingrese el valor mínimo: " valor_minimo
read -p "Ingrese el valor máximo: " valor_maximo


if ! [[ "$cantidad_numeros" =~ ^[0-9]+$ ]] || \
   ! [[ "$valor_minimo" =~ ^[0-9]+$ ]] || \
   ! [[ "$valor_maximo" =~ ^[0-9]+$ ]]; then
    echo "Por favor, ingrese valores válidos."
    exit 1
fi


echo "Números aleatorios generados:"
for ((i = 0; i < cantidad_numeros; i++)); do
    numero_aleatorio=$((RANDOM % (valor_maximo - valor_minimo + 1) + valor_minimo))
    echo $numero_aleatorio
done
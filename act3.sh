#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Uso: $0 <valor>"
    exit 1
fi


valor=$1


re='^[0-9]+$'
if ! [[ $valor =~ $re ]] || [ $valor -le 0 ]; then
    echo "Error: Por favor, introduzca un valor entero mayor que 0."
    exit 1
fi


for ((i = 0; i <= valor; i++)); do
    echo $i
done
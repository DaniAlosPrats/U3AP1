#!/bin/bash

echo "introduce un numero"

while true; do 
read numero
if [ $# -eq 0 ] ; then
echo "uso : $0"
exit 1
fi
$valor = $1
if [ "$valor" -gt 0]; then
    echo "Error: el valor debe ser mayor que 0"
    exit 1
    fi 4
    if ["$((valor % 2))" -eq 0]; then
    echo "El numero $valor es par"
    else 
    echo "El nuimero $valor es impar"
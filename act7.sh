#!/bin/bash


read -p "Ingrese la primera cadena: " cadena1
read -p "Ingrese la segunda cadena: " cadena2


if [ "$cadena1" = "$cadena2" ]; then
    echo "Las cadenas son iguales."
else
    echo "Las cadenas son diferentes."
fi
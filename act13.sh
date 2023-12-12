#!/bin/bash


read -p "Ingrese el primer número: " num1
read -p "Ingrese el segundo número: " num2


if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Por favor, ingrese números válidos."
    exit 1
fi


if [ "$num1" -gt "$num2" ]; then
    echo "$num1 es mayor que $num2."
elif [ "$num1" -lt "$num2" ]; then
    echo "$num2 es mayor que $num1."
else
    echo "Los números son iguales."
fi
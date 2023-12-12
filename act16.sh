#!/bin/bash


if [ "$#" -ne 3 ]; then
    echo "Uso: $0 <valor1> <operador> <valor2>"
    exit 1
fi

valor1=$1
operador=$2
valor2=$3


if ! [[ "$valor1" =~ ^[0-9]+$ ]] || ! [[ "$valor2" =~ ^[0-9]+$ ]]; then
    echo "Error: Los valores deben ser números enteros."
    exit 1
fi


case $operador in
    "+")
        resultado=$(expr $valor1 + $valor2)
        ;;
    "-")
        resultado=$(expr $valor1 - $valor2)
        ;;
    "*")
        resultado=$(expr $valor1 \* $valor2)
        ;;
    "/")
        if [ "$valor2" -eq 0 ]; then
            echo "Error: División entre cero."
            exit 1
        fi
        resultado=$(expr $valor1 / $valor2)
        ;;
    *)
        echo "Error: Operador no válido. Utilice +, -, *, /"
        exit 1
        ;;
esac


echo "Resultado: $resultado"
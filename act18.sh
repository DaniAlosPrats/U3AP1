#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Uso: $0 <n>"
    exit 1
fi

n=$1


if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Por favor, ingrese un número entero válido."
    exit 1
fi

fibonacci() {
    local i=0
    local a=0
    local b=1

    while [ $i -lt $1 ]; do
        echo -n "$a "

        local temp=$a
        a=$b
        b=$((temp + b))

        i=$((i + 1))
    done
}


echo "Los primeros $n elementos de la sucesión de Fibonacci son:"
fibonacci $n
echo ""
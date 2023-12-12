#!/bin/bash


while true; do
    read -p "Ingrese la nota: " nota

 
    if [[ "$nota" =~ ^[0-9]+$ ]] && [ "$nota" -ge 0 ] && [ "$nota" -le 100 ]; then
        break  #
    else
        echo "Por favor, ingrese una nota válida (entre 0 y 100)."
    fi
done


if [ "$nota" -lt 5 ]; then
    echo "Calificación: Suspendido"
elif [ "$nota" -lt 7 ]; then
    echo "Calificación: Aprobado"
elif [ "$nota" -lt 8 ]; then
    echo "Calificación: Bien"
elif [ "$nota" -lt 9 ]; then
    echo "Calificación: Notable"
else
    echo "Calificación: Sobresaliente"
fi

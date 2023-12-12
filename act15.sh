#!/bin/bash

palabras=()

while true; do
    read -p "Ingrese una palabra (escriba 'fin' para finalizar): " palabra

    
    if [ "$palabra" == "fin" ]; then
        break
    fi

 
    palabras+=("$palabra")
done


echo "Se han introducido ${#palabras[@]} palabra(s)."


if [ "${#palabras[@]}" -gt 0 ]; then
    echo "Palabras ordenadas alfabéticamente:"
    printf "%s\n" "${palabras[@]}" | sort
fi
#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Uso: micat <ruta_del_fichero> [-r]"
    exit 1
fi

ruta_fichero=$1
opcion=$2

if [ -e "$ruta_fichero" ]; then
    
    if [ "$opcion" == "-r" ]; then
        tac "$ruta_fichero"  
    else
        cat "$ruta_fichero"  
    fi
else
    echo "El fichero '$ruta_fichero' no existe."
fi
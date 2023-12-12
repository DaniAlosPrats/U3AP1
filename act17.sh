#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Uso: $0 <ruta_del_fichero>"
    exit 1
fi


ruta_fichero=$1


if [ ! -e "$ruta_fichero" ]; then
    echo "El fichero '$ruta_fichero' no existe."
    exit 1
fi


echo "Información sobre el fichero '$ruta_fichero':"

if [ -d "$ruta_fichero" ]; then
    echo "Tipo de fichero: Directorio"
elif [ -f "$ruta_fichero" ]; then
    echo "Tipo de fichero: Fichero regular"
elif [ -L "$ruta_fichero" ]; then
    echo "Tipo de fichero: Enlace simbólico"
else
    echo "Tipo de fichero: Desconocido"
fi


if [ -r "$ruta_fichero" ]; then
    echo "Permisos de lectura: Sí"
else
    echo "Permisos de lectura: No"
fi

if [ -w "$ruta_fichero" ]; then
    echo "Permisos de escritura: Sí"
else
    echo "Permisos de escritura: No"
fi

if [ -x "$ruta_fichero" ]; then
    echo "Permisos de ejecución: Sí"
else
    echo "Permisos de ejecución: No"
fi

if [ -O "$ruta_fichero" ]; then
    echo "El usuario es propietario del archivo."
else
    echo "El usuario no es propietario del archivo."
fi


if [ -s "$ruta_fichero" ]; then
    echo "El fichero no está vacío."
else
    echo "El fichero está vacío."
fi
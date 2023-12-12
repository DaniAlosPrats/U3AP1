#!/bin/bash

archivo_db="bdlibros.txt"

mostrar_generos() {
    echo "Géneros disponibles: Novela, Ciencia Ficción, Historia, Biografía, Otro"
}

# Solic
read -p "Introduce el título del libro: " titulo
read -p "Introduce el año del libro: " anio

if ! [[ $anio =~ ^[0-9]+$ ]]; then
    echo "Error: El año debe ser un número."
    exit 1
fi

read -p "Introduce la editorial del libro: " editorial


mostrar_generos
read -p "Introduce el género del libro: " genero


case $genero in
    Novela|Ciencia\ Ficción|Historia|Biografía|Otro) ;;
    *)
        echo "Error: Género no válido. Por favor, elige uno de los géneros disponibles."
        exit 1
        ;;
esac


echo "$titulo|$anio|$editorial|$genero" >> "$archivo_db"

echo "¡Libro añadido correctamente a la base de datos!"
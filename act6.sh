#!/bin/bash

archivo_libros="bdlibros.txt"

# Función para buscar libros por título
buscar_por_titulo() {
    read -p "Ingrese el título del libro a buscar: " titulo
    grep -i "$titulo" "$archivo_libros"
}

# Función para buscar libros por año
buscar_por_anio() {
    read -p "Ingrese el año del libro a buscar: " anio
    grep "$anio" "$archivo_libros"
}

# Función para buscar libros por editorial
buscar_por_editorial() {
    read -p "Ingrese la editorial del libro a buscar: " editorial
    grep -i "$editorial" "$archivo_libros"
}

# Función para buscar libros por género
buscar_por_genero() {
    read -p "Ingrese el género del libro a buscar: " genero
    grep -i "$genero" "$archivo_libros"
}

# Función para insertar un nuevo libro
insertar_libro() {
    read -p "Ingrese el título del nuevo libro: " nuevo_titulo
    read -p "Ingrese el año del nuevo libro: " nuevo_anio
    read -p "Ingrese la editorial del nuevo libro: " nueva_editorial
    read -p "Ingrese el género del nuevo libro: " nuevo_genero

    echo "$nuevo_titulo|$nuevo_anio|$nueva_editorial|$nuevo_genero" >> "$archivo_libros"
    echo "Libro insertado correctamente."
}

# Menú principal
while true; do
    echo "Menú de opciones:"
    echo "1) Buscar por título."
    echo "2) Buscar por año."
    echo "3) Buscar por editorial."
    echo "4) Buscar por género."
    echo "5) Insertar libro."
    echo "6) Salir."

    read -p "Seleccione una opción (1-6): " opcion

    case $opcion in
        1) buscar_por_titulo ;;
        2) buscar_por_anio ;;
        3) buscar_por_editorial ;;
        4) buscar_por_genero ;;
        5) insertar_libro ;;
        6) echo "Saliendo. ¡Hasta luego!"; exit 0 ;;
        *) echo "Opción no válida. Por favor, ingrese una opción válida." ;;
    esac
done
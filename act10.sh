#!/bin/bash

echo "Ingrese la cantidad de litros de agua consumidos:"
read litros_consumidos


if [ "$litros_consumidos" -le 0 ]; then
    echo "La cantidad de litros debe ser mayor que 0."
    exit 1
fi


costo_total=20


if [ "$litros_consumidos" -gt 50 ] && [ "$litros_consumidos" -le 200 ]; then
    costo_total=$((costo_total + (($litros_consumidos - 50) * 20))
elif [ "$litros_consumidos" -gt 200 ]; then
   
    costo_total=$((costo_total + (150 * 20)) 
    costo_total=$((costo_total + (($litros_consumidos - 200) * 10))  
fi

echo "El coste total es de $costo_total euros."
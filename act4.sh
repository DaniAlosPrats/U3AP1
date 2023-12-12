#!/bin/bash

while true; do
    
    read -p "Introduce un valor del día (1-30): " dia

  
    if [[ $dia =~ ^[1-9]$|^1[0-9]$|^20$|^30$ ]]; then
        
        dia_semana=$((($dia - 1) % 7))
        
        
        case $dia_semana in
            0) nombre_dia="Lunes" ;;
            1) nombre_dia="Martes" ;;
            2) nombre_dia="Miércoles" ;;
            3) nombre_dia="Jueves" ;;
            4) nombre_dia="Viernes" ;;
            5) nombre_dia="Sábado" ;;
            6) nombre_dia="Domingo" ;;
        esac

        echo "El día $dia es un $nombre_dia."
        
    else
        echo "Error: Introduce un valor válido del día (1-30)."
    fi
done
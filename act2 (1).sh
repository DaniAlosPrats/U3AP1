#l/bin/bash


validar_numero() {
    if ! [[ $1 =~ ^[0-9]+$ ]] ; then
        echo "Error: $1 no es un numero entero positivo. Intente nuevamente."
        return 1
    fi
    return 0
}


while true; do
    read -p "Por favor, ingrese un valor mayor que 0: " numero
    validar_numero $numero

  
    if [ $? -eq 0 ]; then
        break
    fi
done


if ((numero % 2 == 0)); then
    echo "El numero $numero es par."
else
    echo "El numero $numero es impar."
fi

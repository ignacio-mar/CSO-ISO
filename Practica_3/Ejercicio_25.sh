#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Se debe recibir al menos un paramentro"
    exit 1
fi 
#inicializamos el vector de direcciones
direcciones=()

#agregamos las direcciones enviadas como parametros al vector

for direccion in "$@" ; do
    direcciones+=("$direccion") 
done

for (( i=0; i< "${#direcciones[@]}"; i++)); do
    if (( i % 2 !=0 )); then
        if [ -e "${direcciones[i]}" ]; then
            echo "La direccion ${direcciones[i]} existe"
            if [ -d "${direcciones[i]}" ]; then
                echo "La direccion ${direcciones[i]} es un directorio"
            elif [ -f "${direcciones[i]}" ]; then
                echo "La direccion ${direcciones[i]} es un archivo"
            fi
        else
            echo "La direccion ${direcciones[i]} no existe"
        fi
    fi
done
exit 0

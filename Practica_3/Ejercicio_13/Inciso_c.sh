#!/bin/bash
#. c) Crear un script que reciba como parámetro el nombre de un archivo einforme si el mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En caso de que no exista el archivo/directorio cree un directorio con el nombre recibido como parámetro.
if [ $# -ne 1 ]; then
    echo "Error/ Uso: $0 nombre_elemento"
    exit 1
else    
    elemento=$1
    if [ -e $elemento ]; then
        echo "El elemento $elemento existe."
        if [ -d $elemento ]; then
            echo "Es un directorio."
        else
            echo "Es u./Inciso_c.sh ffn archivo."
        fi
    else
        echo "El elemento $elemento no existe. Creando directorio..."
        mkdir $elemento
        echo "Directorio $elemento creado."
    fi
fi
exit 0
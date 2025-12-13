#!/bin/bash
arreglo=()
for linea in $(cat /etc/passwd | cut -d: -f 1,4); do
    usuario=$(echo $linea | cut -d: -f1)
    gid=$(echo $linea | cut -d: -f2)
    for linea2 in $( cat /etc/group | cut -d: -f 1,3); do
        grupo=$( echo $linea2 | cut -d: f1)
        id_grupo=$( echo $linea2 | cut -d: f3)
        if [ "$gid" -eq "$id_grupo" ]; then 
            if [ "$grupo" -eq "users" ]; then
                arreglo+=("$usuario")
            fi
        fi
    done
done
if [ $# -eq 2]; then
       echo "el elemento de la posicion $2 es :${arreglo[$2]}"
fi
if[ $# -eq 1 ]; then
    case $1 in 
    "-l") echo "la longitud del arreglo es ${#arreglo[@]}";;
    "-1i") for elemento in "${arreglo[@]}"; do
            echo "$elemento"
            done;;
    *) echo "opcion no valida";;
    esac
fi




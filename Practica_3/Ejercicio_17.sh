#!/bin/bash
#Escribir un script que al ejecutarse imprima en pantalla los nombre de los Página 3 de 9 archivos que se encuentran en el directorio actual, intercambiando minúsculas por mayúsculas, además de eliminar la letra a (mayúscula o minúscula).
for archivo in $(ls); do
    nuevo_nombre=$(echo $archivo |tr 'a-zA-Z' 'A-Za-z' | tr -d 'aA')
    echo $nuevo_nombre
done


#!/bin/bash
if [ $# -ne 3 ]; then
    echo "Error. El uso correcto es: $0 -a nombre_del_directorio/ -b nombre_del_directorio"
    exit 1
fi
if [ -d "$1" ]; then
    echo "Es un directorio."
    cadena=$3
    case $2 in
        "-a")
             find "$1" -type f|while read archivo_completo; do 
                nombre_archivo=$(basename $archivo_completo)
                ruta_directorio=$(dirname $archivo_completo)
                 nuevo_nombre="${nombre_archivo}${cadena}"
                mv "$ruta_directorio/$nombre_archivo" "$ruta_directorio/$nuevo_nombre"
            done;;
        "-b")
            find $1 -type f|while read archivo_completo; do 
                 nombre_archivo=$(basename "$archivo_completo")
                 ruta_directorio=$(dirname "$archivo_completo")
                nuevo_nombre="${cadena}${nombre_archivo}"
                 mv "$ruta_directorio/$nombre_archivo" "$ruta_directorio/$nuevo_nombre"
            done;;
        *)
            echo "Opcion no valida. Use -a o -b";;
    esac    
    
else
    echo "Es un archivo."
fi
exit 0
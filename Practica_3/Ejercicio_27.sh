#!/bin/bash
if [ $# -ne 1 ]; then 
    echo "debe ingresar el nombre de un directorio"
    exit 1
fi
if [[ ! -d $1 ]]; then
    echo "El parametro debe ser un directorio valido"
    exit 4
fi

find $1 -type f | while read -r archivo_ruta_completa; do
    if [[ -r "$archivo_ruta_completa" ]]; then
        echo "Archivo: $archivo_ruta_completa tiene permisos de lectura."
    else
        echo "No se tienen permisos de lectura para el archivo: $archivo_ruta_completa"
    fi
    if [[ -w "$archivo_ruta_completa" ]]; then
        echo "Archivo: $archivo_ruta_completa tiene permisos de escritura."
    else
        echo "No se tienen permisos de escritura para el archivo: $archivo_ruta_completa"
    fi
done
exit 0





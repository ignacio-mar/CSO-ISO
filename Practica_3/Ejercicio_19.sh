#!/bin/bash
#Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menú, el cual, al ser invocado, mostrará un menú con la selección para cada uno de los scripts creados en esta práctica. Las instrucciones de cómo proceder deben mostrarse junto con el menú. El menú deberá iniciarse y permanecer activo hasta que se seleccione Salir.
echo "Menu de Opciones"
echo "1) Verificar si un usuario se ha logueado (Ejercicio 18)"
echo "2) Imprimir en pantalla los nombre de los archivos intercambiando mayusculas por minusculas (Ejercicio 17)"
echo "3) Salir"
echo "Seleccione una opcion:[1..3] "
read opcion

case $opcion in
    "1") ./Ejercicio_18.sh ;;
    "2") ./Ejercicio_17.sh ;;
    "3") echo "Saliendo..."; exit 0 ;;
    *) echo "Opcion invalida";;
    esac
    exit 0

    
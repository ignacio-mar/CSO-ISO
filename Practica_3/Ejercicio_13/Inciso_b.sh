#!/bin/bash
#Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y QuienEsta. Según la opción elegida se le debe mostrar
echo " Ingrese el numero de alguna de las siguentes opciones: "
echo " 1) Listar "
echo " 2) DondeEstoy "
echo " 3) QuienEsta "
read opcion
case $opcion in 
    "1") ls -l ;;
    "2") pwd ;;
    "3") whoami ;;
    *) echo "Opcion no valida. Use 1, 2 o 3" ;;
esac
exit 0 

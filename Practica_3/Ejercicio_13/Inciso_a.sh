#!/bin/bash
#a. Realizar un script que visualice por pantalla los números del 1 al 100 así como sus cuadrados.
for ((i=0; i <= 100; i++))
do 
    echo "Numero : $i - Cuadrado: $(($i * $i))"
done
exit 0

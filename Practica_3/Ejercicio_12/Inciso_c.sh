#!/bin/bash
#Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, %. Esta calculadora debe funcionar recibiendo la operación y los números como parámetros
if [ $# -ne 3 ] ;then
     echo "Error debes usar: $0 operacion num1 num2"
     echo "Ejemplo: $0 '*' 10 5"
     exit 1
else
     operacion=$1
     num1=$2
     num2=$3
     case $operacion in
         "+") echo "Suma: $(($num1 + $num2))" ;;
         "-") echo "Resta: $(($num1 - $num2))" ;;
         "*") echo "Multiplicacion: $(($num1 * $num2))" ;;
         "/") echo "Division: $(($num1 / $num2))" ;;
         *) echo "Operacion no valida. Use +, -, * o %" ;;
     esac
fi
exit 0
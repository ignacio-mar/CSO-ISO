#!/bin/bash
# a. Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.
    # echo "Ingrese dos numeros separados por espacio:"
    # read num1 num2

# b. Modificar el script creado en el inciso anterior para que los números sean recibidos como parámetros. El script debe controlar que los dos parámetros sean enviados.
if [ $# -ne 2 ]; then
    echo "Error/ Uso: $0 num1 num2"
    exit 1
else
    num1=$1
    num2=$2
    echo "Suma: $(($num1 + $num2))"
    echo "Resta: $(($num1 - $num2))"
    echo "Multiplicacion: $(($num1 * $num2))"
fi
exit 0
#!/bin/bash

num=(8 4 2)
multiplicacion=1

for elemento in "${num[@]}"; do
    multiplicacion=$(( multiplicacion * elemento))
done
echo "La multiplicacion de todos los elementos del array es : $multiplicacion"
exit 0

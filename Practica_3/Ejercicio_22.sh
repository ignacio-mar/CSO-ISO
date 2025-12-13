#/bin/bash

arreglo=(2 4 5 6 7 8)
cantidad=0

for elemento in "${arreglo[@]}"; do 
    if ((elemento % 2 == 0 )); then
        echo "el numero $elemento es par"
    else
        cantidad=$((cantidad +1))
    fi
done
echo "Hay un total de $cantidad numeros impares en el arreglo"
exit 0
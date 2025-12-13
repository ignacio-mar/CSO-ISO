#!/bin/bash
vector1=(1 4 5 6 7)
vector2=(2 3 5 6 8)
vector_suma=()
for (( i=0;i<"${#vector1[@]}"; i++ )); do
    suma=$((vector1[$i] + vector2[$i]))
    vector_suma+=("$suma")
done
for (( i=0;i<"${#vector1[@]}"; i++ )); do
    echo "la suma de los elementos de la posicion $i es : ${vector_suma[i]}"
done
exit 0
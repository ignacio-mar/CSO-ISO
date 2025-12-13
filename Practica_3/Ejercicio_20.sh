#!/bin/bash

#inicializamos un array vacio
pila=()

push (){
    local elemento=$1
    pila+=("$elemento")
    echo "Se agrego el elemento: $elemento"
}
pop (){
  if [ ${#pila[*]} -eq 0 ]; then
    echo "La pila esta vacia, no se puede eliminar ningun elemento"
    else
    local posicion=$((${#pila[*]} -1))
    local elemento="${pila[$posicion]}"
    unset pila[$posicion]
    echo "se elimino el elemento: $elemento"
    fi
}
length(){
    echo " la cantidad de elementos de la pila son ${#pila[*]}"
}

print(){
  for elemento in "${pila[*]}"; do
    echo "$elemento"
done
}

for (( i=1;i<11;i++ )) do
    push $i
done
for ((i=0;i<3;i++)) do
    pop 
done
length
echo "Elementos en la pila:"
print

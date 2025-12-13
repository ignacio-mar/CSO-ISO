inicializar(){
    arreglo=()
}
agregar(){
    arreglo+=("$1")
}
eliminar(){
    unset arreglo[$1]
}
longitud(){
    echo "la longitud del arreglo es : ${#arreglo[@]} "
} 
imprimir(){
    echo "ELEMENTOS:"
    for (( i=0; i<"${#arreglo[@]}"; i++ )); do
        echo "${arreglo[$i]}"
    done
}
inicializar_con_valores(){
    inicializar
    for (( i=0; i< $1; i++ )); do
        arreglo+=("$2")
    done
}

#Ejemplo de Uso

inicializar
agregar 3
agregar 5
agregar 5
agregar 9
imprimir
longitud
eliminar 1
longitud
imprimir
inicializar_con_valores 4 7
longitud
imprimir

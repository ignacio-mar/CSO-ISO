#!/bin/bash
#Crear un script que verifi que cada 10 segundos si un usuario se ha logueado en el sistema (el nombre del usuario será pasado por parámetro). Cuando el usuario fi nalmente se loguee, el programa deberá mostrar el mensaje ”Usuario XXX logueado en el sistema” y salir.
if [ $# -ne 1 ]; then
    echo "debe enviar un parametro (usuario)"
    exit 1
fi
usuario=$1i
while true; do
    if who | grep -w "$usuario" > /dev/null; then
        echo "Usuaro $usuario logueado en el sistema"
        exit 0
    fi
    sleep 10
done
echo "script finalizado"
exit 0 





#!/bin/bash
if [ $# -ne 1]; then
    echo "Error. Uso correcto: $0 extension"
    exit 1
fi  
extension="$1"
contador=0
find ~ -type f -name "*."$extension"" | while contador=$((contador+1)); 


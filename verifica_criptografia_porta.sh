###############################################################
# Script criado por Raulex Ramos                              #
# 01 de maio de 2021                                          #
# Necesário para testar as portas que contenha criptografia   #
###############################################################

#!/bin/bash

echo "#################################"
echo "## VALIDA CRIPTOGRAFIA NA PORTA##"
echo "#################################"

read -p "## Digite a dominio: " userInput
read -p "## Digite a porta: " portInput
    
if [[ -z "$userInput" && "$portInput" ]]; then
   printf '%s\n' "Dominio e porta não encontrada, digite novamente!"
   exit 1
else
   printf "Você digitou %s " "$userInput:$portInput"
   openssl s_client -showcerts  -connect $userInput:$portInput < /dev/null | openssl  x509 -text -noout
   exit 0
fi
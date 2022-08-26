#!/bin/bash

echo "Atualizando o servidor"

#ATUALIZANDO O SERVIDOR
#É possível que nessa etapa sejam pedidas confirmações de reboot de daemons.
#Solução automatizada ainda pendente.

apt-get update
apt-get upgrade -y


echo "Instalando o Apache e Unzip "

apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando, descompactando e copiando os arquivos da webpage"

#Acessa a pasta onde serão baixados o arquivos e onde serão descompactados
cd /tmp

#Baixando arquivos do site
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip

#Acessa a pasta descompactada
cd /linux-site-dio-main

#Copiando arquivos para a pasta padrão do Apache
cp -R * /var/www/html/
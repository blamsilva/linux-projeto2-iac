#!/bin/bash

echo "Orientação para permição de execução do script utilizar o comando: chmod +x script-iac2.sh"
echo "Para executar o script ultilizar o comando: ./script.sh"

echo "1 - Atualizar o Servidor..."
apt-get update
apt-get upgrade -y

echo "2 - Instalar o apach2..."
apt-get install apache2 -y

echo "3 - instalar o unzip..."
apt-get install unzip -y

echo "4 - Abrir a pasta tmp de arquivos temporários..."
cd /tmp

echo "5 - Baixar aplicação ultilizando o comando wget seguido do link..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "6 - Desconpactar arquivo baixado..."
unzip main.zip

echo "7 - Abrir diretório descompactado..."
cd linux-site-dio-main

echo "8 - Cópiar arquivos para pasta do apach..."
cp -R * /var/www/html/

echo "9 - Reiniciar Serviço apach2..."
systemctl restart apache2




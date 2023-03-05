#!/bin/bash

echo "Realizando atualização..."
apt-get update
apt-gte upgrade -y

echo "Instalando Apache..."
apt-get install apache2 -y

echo "Instalando Unzip..."
apt-get unzip -y

echo "Acessando pasta tmp..."
cd /tmp

echo "Realizando download de arquivos para pasta tmp..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando main.zip..."
unzip main.zip

echo "Acessando a pasta linux-site-dio e copiando os arquivos para o Apache..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim!..."
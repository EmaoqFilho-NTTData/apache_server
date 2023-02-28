#!/bin/bash

echo "Atualizando Servidor"

apt-get update
apt-get upgrade -y

echo "Instalando pacotes"

apt-get install apache2 -y
apt-get install unzip -y


cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd /linux-site-dio
cp -R . /var/www/html/

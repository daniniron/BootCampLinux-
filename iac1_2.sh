#!/bin/bash

echo "INÍCIO SCRIPT"
	echo "Atualizando o servidor"
		apt-get update
		apt-get upgrade -y
	echo "Atualização  finalizada."

	echo "instalação de pacotes Apache2 e unzip"
		apt-get install apache2 -y
		apt-get install unzip -y
	echo "Instalação finalizada."

	echo "Baixando e copiando os arquivos da aplicação"
		cd /tmp
		wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
	echo "Descompactando arquivo (SITE)"
		unzip main.zip
		cd linux-site-dio-main
	echo "Copiando arquivo descompactado para /var/www/html/ "
		cp -R * /var/www/html/

echo "FIM SCRIPT"

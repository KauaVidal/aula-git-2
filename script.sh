#!/bin/bash

wich java
java -version #verifica versao atual do java
if [ $? = 0 ]; #se retorno for igual a 0
	then #entao,
		echo "java instalado" #print no terminal
		echo "Prosseguindo para a proxima etapa..."
		echo "-----------------------------------------"

	else #se nao,
		echo "java não instalado" #print no terminal
		echo "gostaria de instalar o java? [s/n]" #print no terminal

		read get #variável que guarda resposta do usuário

	if [ \"$get\" == \"s\" ]; #se retorno for igual a s
		then #entao
		sudo apt install openjdk-17-jre -y #executa instalacao do java
	fi #fecha o 2º if
fi #fecha o 1º if

node -v #verifica versao atual do java
if [ $? = 0 ]; #se retorno for igual a 0
        then #entao,
                echo "node instalado" #print no terminal
		echo "Prosseguindo para proxima etapa ..."
		echo "------------------------------------------"

        else #se nao,
                echo "NodeJS não instalado" #print no terminal
                echo "gostaria de instalar o NodeJS ? [s/n]" #print no terminal

                read get #variável que guarda resposta do usuário

        if [ \"$get\" == \"s\" ]; #se retorno for igual a s
                then #entao
		curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
                sudo apt-get install -y nodejs #executa instalacao do nodejs
        fi #fecha o 2º if
fi #fecha o 1º if

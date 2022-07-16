#!/bin/bash
# Script de criação de usuario

clear
echo "Digite o nome do usuario"

MSG="Erro usuario não informado"

read USER

# Testando variavel USER
test -z $USER && echo "$MSG" && exit

# Validando se o usuario existe
RESP=$(getent passwd | grep $USER)

test -z $RESP

if [ $? -eq 0 ]; then
    echo "Usuario não existe"
      else
    echo "Usuario Existe"
    exit
fi

echo "Adicionando o usuario $USER ..."
sleep 3

sudo useradd $USER
# Caso execute com um usuário regular, forneça senha de root para criar o usuário!
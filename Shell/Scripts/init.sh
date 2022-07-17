#!/bin/bash


echo " Digite o nome do usuario:  " ; read USER

if who | grep $USER > /dev/null
 then
    echo $USER, usuário desta sessão "->" logado no sistema
 else
    echo $USER não está logado ou não é o usuario desta sessão
fi
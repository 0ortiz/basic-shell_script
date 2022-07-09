#!/bin/bash
# Meu primeiro shell script! - Expansão de Parâmetros no Bash


MYFILENAME="/home/ortiz/myfile.txt" # Define o valor da variável MYFILENAME
FILE=${MYFILENAME##*/} # FILE torna-se myfile.txt
DIR=${MYFILENAME%/*} # DIR torna-se /home/ortiz
NAME=${FILE%.*} # NAME torna-se "myfile"
EXTENSION=${FILE##*.} # EXTENSION torna-se "txt"


# Entendendo a EXPANSÃO DE PARÂMETROS.

# ${VAR:-VALUE} -- Se a variável estiver em branco ou vazia, expande isso para valor.
# ${VAR#pattern} -- Corta a correspondência mais curta para o padrão da frente do valor de var.
# ${VAR##pattern} -- Corta a correspondência mais longa para o padrão a partir da frente do valor de var.
# ${VAR%pattern} -- Corta a correspondência mais curta para o padrão a partir do final de valor de var.
# ${VAR%%pattern} -- Corta a correspondência mais longa para o padrão a partir do final de valor de var.

# Exemplo simples de expansão:
# TESTE='Exemplo'
# TESTE=${TESTE:-"Não configurado"} - Caso você imprimisse a variavel TESTE, a saída seria "Não configurado"


#---------Confirmando minha Lógica---------#

echo $MYFILENAME
echo $FILE
echo $DIR
echo $NAME
echo $EXTENSION

# Saida do Script :

# /home/ortiz/myfile.txt
# myfile.txt
# /home/ortiz
# myfile
# txt

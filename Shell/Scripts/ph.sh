#!/bin/bash
# Agenda simples de telefone


PHONELIST=~/.phonelist.txt
# se não houver nenhum parâmetro de linha de comando $#,
# há um problema.
if [ $# -lt 1 ] ; then
    echo  "Qual numero de telefone você precisa? "
    exit 1
fi
# Você deseja adicionar um novo número de telefone?
if [ $1 = "new" ] ; then
    shift
    echo $* >> $PHONELIST
    echo $* "adicionado a base de dados!"
    exit 0
fi
# Não, mas o arquivo ainda tem algo nele?
# Esta pode ser a primeira vez que o usamos, afinal
if [ ! -s $PHONELIST ] ; then
    echo "Nenhum número na lista ainda!"
    exit 1
else
    grep -i -q "$*" $PHONELIST    # pesquisa o arquivo silenciosamente
        if [ $? -ne 0 ] ; then    # encontramos algo?
            echo "Desculpe, esse nome não existe na agenda!"
            exit 1
        else
            grep -i "$*" $PHONELIST
    fi
fi
exit 0

# Então, se você criou o arquivo de lista telefônica como ph em seu diretório atual, pode digitar o seguinte
# a partir do shell para testar seu script ph:

# $ chmod 755 ph
# $ ./ph new “Algum_nome” 11972349021 - qualquer número

# -------------Saida-------------- #
# Algum_nome 11972349021 adicionado a base de dados

# -------------Procurando o contato add a base de dados--------------- #
# $ ./ph Algum_nome

# -------------Saida-------------- #

# Algum_nome 11972349021

# ------------Descrição----------- #

# O comando chmod torna o script ph executável. O comando ./ph executa o comando ph a partir do
# diretório atual com a opção new. Isso acrescenta Qualquer_nome como o nome e Qualquer_número como o
# número de telefone ao banco de dados ($HOME/.phone.txt). O comando ph em seguida pesquisa no
# banco de dados o nome qualquer e mostra a entrada de telefone para o nome qualquer. Se o script funcionar,
# adicione-o a um diretório em seu caminho (como $HOME/bin).
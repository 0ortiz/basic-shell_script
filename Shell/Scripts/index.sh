#!/bin/bash - Automação de Backup do diretório inicial de um usuário regular
# Quando for executar o script, use "sh index.sh /diretorio_que_voce_quer_realizar o backup"

# -----EXEMPLO-----

# sh index.sh $HOME, isso faz com que o código execute um backup do seu diretorio home inteiro


timestamp="$(date +'%b-%d-%y')" # Usamos a variável timestamp para criar um novo nome de arquivo toda vez que o script é executado para que os backups permaneçam separados e não haja substituição.
DIRECTORY='backup_home' # Nome do diretório a ser alocado os arquivos de Backup
echo "Criando diretório de $DIRECTORY em $HOME..." # Cria o valor do "DIRECTORY" no diretório inicial de um usuário regular
sleep 3
[ -e $DIRECTORY ] && echo "$DIRECTORY Já existe" || mkdir $DIRECTORY # Testa para ver se o diretório representado por $DIRECTORY já existe, se existir, uma mensagem é imprimida, se não existir é criado. 
echo "Iniciando operações de Backup..."
sleep 3
sudo tar -cvpzf /home/$USER/$DIRECTORY/backup-${timestamp}.tar.gz $1
#No comando acima,

# c – compressão
# v – verboso
# p – reter as permissões do arquivo
# z – criar arquivo gzip
# f – arquivo regular

sleep 1
echo "Operações Completas!"
sleep 3
echo "--------Backup automático--------
É aconselhável criar um cron job para executar o script acima regularmente de maneira
automática. Para isso, abra o crontab com o seguinte comando.

sudo crontab -e

Adicione a seguinte linha para executar o script de shell acima regularmente todos os dias às 10h

0 10 * * * sudo /local_do_script >/dev/null 2>&1

Salve e feche o arquivo. No comando acima, “0 10 * * *” garante que nosso script de shell seja executado todos os dias às 10h. 
Além disso, silenciamos o resultado da execução enviando a saída para /dev/null."








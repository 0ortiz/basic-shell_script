# Usando a estrutura “if”
![Shell-Logo](images/shell-logo.png)

!SLIDE commandline incremental transition=scrollUp

# Testando “strings”

O teste de condicionais básicos podem ser executados com base em strings, valores números ou arquivos/diretórios;

Uma das opções para execução deste tipo de teste é utilizar o comando "test":

    $ test "fusca" = "fusca" ; echo $?
    0

Em seguida:

    $ test "fusca" = "gol" ; echo $?
    0

!SLIDE commandline incremental transition=scrollUp

# Testando “expressões matemáticas”

Para testes com base em operadores podemos utilizar as expressões "-eq" e "-ne":

    $ test 50 -eq 100 ; echo $?
    1

Tente novamente:

    $ test 100 -eq 100 ; echo $?
    0

Terceira e ultima vez:

    $ test 100 -ne 100 ; echo $?
    1

!SLIDE commandline incremental transition=scrollUp

# Testando “Variaveis”

Outra possibilidade é a validação de variáveis:

    $ test $INPUT ; echo $?
    1

Verifique com uma variável válida:

    $ test $BASH ; echo $?
    0

.callout.info `Você pode inverter o teste utilizando o parâmetro "-z" para então verificar se a varíavel foi declarada`

!SLIDE commandline incremental transition=scrollUp

# Testando “Diretóriso e Arquivos”

Outra possibilidade muito útil é utilizar o shell script para validar se um determinado arquivo ou diretório existe:

    $ test -f /etc/passwd ; echo $?
    0

Enquanto o "-f" testa arquivos o "-d" testa diretórios:

    $ test -d /etc/ ; echo $?
    0

!SLIDE incremental transition=scrollUp

# Usando a estrutura “if”

Dentro de um script exceções, servem para ajudar quando o resultado de uma execução pode levar a mais de uma possibilidade, por exemplo: 

O arquivo [script4.sh](https://raw.githubusercontent.com/helcorin/shell-script-basico/master/shell/_files/script4.sh) possui um exemplo de testes com estrutura "if"

    @@@shell
    echo "Digite usuario para consulta :"
    read USER
    REPLY=$(getent passwd | grep $USER)

    if [ -z $REPLY ] ; then
      echo "Usuario $USER não existe"
        else
      echo "Usuario Existe"
    fi

.callout.info `Nesse exemplo a variavel $REPLY foi recebida utilizando a instrução read que funciona como um tipo de prompt de comandos para interação.`

# Usando a estrutura “if”

Ainda com base neste mesmo exemplo podemos alterar o script fazendo uso da variavel interrogação que comentamos anteriormente seguida da função de teste conforme [exemplo](script5.sh) o que adicionaria uma validação extra caso a várivel esteja vazia:

    @@@shell
    echo "Digite usuario para consulta :"
    read USER
    REPLY=$(getent passwd | grep $USER)

    test -z $REPLY

    if [ $? -eq 0 ] ; then
      echo "Usuario $USER não existe"
        else
      echo "Usuario Existe"
    fi

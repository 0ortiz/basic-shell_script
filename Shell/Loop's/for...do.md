# O loop “for…do”
<img src="https://github.com/0ortiz/basic-shell_script/blob/main/Imagens/32161.png" alt="CL-thumb" width="20%">

- Loops são usados para executar ações repetidamente até que uma condição seja atendida ou até que todos
os dados tenham sido processados. Um dos loops mais usados é o for...do. Ele itera através de uma
lista de valores, executando o corpo do loop para cada elemento na lista. A sintaxe e alguns exemplos são
aqui apresentados:


```
for VAR in LISTA
do
  { corpo }
done
```

#
- O loop **for** atribui os valores em LIST a VAR, um de cada vez. Então, para cada valor, o corpo em
chaves entre do e done é executado.
VAR pode ser qualquer nome de variável e LIST pode ser
composta de praticamente qualquer lista de valores ou qualquer coisa que gere uma lista.
```
for NUMBER in 0 1 2 3 4 5 6 7 8 9
do
   echo O número é $NUMBER
done
``` 
```
for FILE in ‘/bin/ls’
do
  echo $FILE
done
```

> Você também pode escrever dessa maneira, que é um pouco mais limpa:

```
for NAME in John Paul Ringo George ; do
  echo $NAME é meu Beatle favorito
done
``` 
- Cada elemento de **LIST** é separado do seguinte por espaços em branco. Isso pode causar problemas se 
você não tiver cuidado, pois alguns comandos, como ls -l, geram saída de múltiplos campos por linha,
cada um separado por um espaço em branco. A string done termina a instrução for.

## Se você é um fiel programador em C, o bash permite que você use a sintaxe C para controlar seus loops:
``` 
LIMIT=10
# Parênteses duplos, e nenhum $ em LIMIT mesmo sendo uma variável!
for ((a=1; a <= LIMIT ; a++)) ; do
  echo “$a”
done
``` 

# Os loops “while…do” e “until…do”

- Duas outras possíveis construções de iteração são o loop while...do e o loop until...do. A
estrutura de cada uma é apresentada aqui:

> A instrução while executa enquanto a condição é verdadeira. A instrução until executa até que a
condição seja verdade — em outras palavras, enquanto a condição é falsa.
Eis um exemplo de um loop while que irá gerar a saída do número 0123456789:
```
N=0
while [ $N –lt 10 ] ; do
    echo –n $N
    let N=$N+1
done
``` 
> Outra maneira de produzir o número 0123456789 é usar um loop until como a seguir:
```
N=0
until [ $N –eq 10 ] ; do
    echo –n $N
    let N=$N+1
done
```

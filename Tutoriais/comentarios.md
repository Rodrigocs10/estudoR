##Observações estudo##

### **Criação de sequências** ###
**Criando sequência de 1 a 10**
// : Mais básico
> 1:10

// usando seq
> seq(1, 10)

**Criando sequência de 1 a 10 com incrementos de 0.5**
// Mais básico não permite

// usando seq
>seq(1, 10, by=0.5)

**Criando sequência de 20 números entre 1 e 5**
// Mais básico não permite

// Usando seq
>seq(1, 5, length=20)

**Gerando sequência de 1 até quantidade de elementos de um vetor. Obs.: considerar z como o vetor**
// Mais básico
> 1 : length(z)

//Usando seq
> seq(along.with = my_seq)

// Usando seq_along
> seq_along(z)

**Gerando uma sequência de 1 a 3 com 10 repetições**
>rep(c(1,2,3),  times=10)

**Gerando uma sequência de 1 a 3 com repetção de 10 vezes de cada elemento**
>rep( c(1,2,3), each = 10)

### **Operadores lógicos** ###
>'<'
>'>='
>'>'
>'<='
>'=='
>'!='

###**Vetores**###
Podem ser:
>1. Vetores atômicos
>>Permite apenas **um** tipo

>2. listas
>>Permite **vários** tipos de valores

#### Trabalhando com Strings ####
// Criando array de strings
>my_name <- c("My", "name", "is")

// Adicionand string ao array
>my_name <- c(palavras, "Rodrigo")
>[1] "My"      "name"    "is"      "Rodrigo"

// **Juntando** todas as strings em uma string só e separando por " " (espaço)
>paste(my_name, collapse=" ")



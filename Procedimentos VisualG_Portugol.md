# Procedimento Simples de Aprovação Aluno
```
Algoritmo "funcoes"

Var

num1,num2,num3,media : real
aprovacao: caractere

funcao mediaAluno(a,b,c:real):real
inicio

media <- (a+b+c)/3
retorne media

fimfuncao
funcao aprovacaoAluno(): caractere
inicio

  se (mediaAluno(num1,num2,num3) >= 6) entao
     aprovacao <- "APROVADO"
  senao
     aprovacao <- "REPROVADO"
  fimse
  retorne aprovacao
fimfuncao

Inicio

      escreval("Digite a primeira nota: ")
      leia(num1)
      escreval("Digite a segunda nota: ")
      leia(num2)
      escreval("Digite a terceira nota: ")
      leia(num3)

      escreval("A sua media é: ",mediaAluno(num1,num2,num3))
      escreval("Você está: ",aprovacaoAluno())




Fimalgoritmo

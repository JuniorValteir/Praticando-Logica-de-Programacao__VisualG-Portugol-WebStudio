# Cadastro Cliente (Portugol_VisualG)
```
Algoritmo "Cadastro Cliente"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2023
Var
opcaoMenu : caractere
clientes : vetor[1..5] de caractere

procedimento mostrarMenu()
inicio

      escreval("1- Cadastrar")
      escreval("2- Pesquisar")
      escreval("3- Editar")
      escreval("4- Excluir")
      leia(opcaoMenu)
fimprocedimento


procedimento cadastrar()
var
i : inteiro
inicio

      para i de 1 ate 5 faca
           se clientes[i] = "" entao
           Escreval("Informe o nome do cliente: ")
           leia(clientes[i])
           fimse
      fimpara
fimprocedimento

procedimento pesquisar()
var
i, indiceSucesso : inteiro
nomePesquisar : caractere


inicio

      Escreval("Informe o nome do cliente: ")
      leia(nomePesquisar)
      indiceSucesso <- -1
      para i de 1 ate 5 faca
           se clientes[i] = nomePesquisar entao
           indiceSucesso <- i
           interrompa
           fimse
      fimpara
      se indiceSucesso = -1 entao
         escreva("Cliente não cadastrado")
      senao
         escreval("Cliente ",clientes[i]," encontrado na posição: ", indiceSucesso," do indice")
      fimse
fimprocedimento

procedimento editar()
var
i, numeroIndice : inteiro
novoNomeIndice : caractere


inicio
      Escreval("Informe o indice a editar: ")
      leia(numeroIndice)
           se ( numeroIndice > 5 )ou (numeroIndice < 1)entao
                escreval("Indice Invalido")
           senao
           escreva("Digite um novo nome para o indice: ")
           leia(novoNomeIndice)
           clientes[numeroIndice] <- novoNomeIndice
           escreval("Cliente editado com sucesso")
           fimse

fimprocedimento


procedimento excluir()
var
i, numeroIndice : inteiro

inicio
      Escreval("Informe o indice a excluir: ")
      leia(numeroIndice)
           se ( numeroIndice > 5 )ou (numeroIndice < 1)entao
                escreval("Indice Invalido")
           senao
           clientes[numeroIndice] <- ""
           escreval("Exclusão feita com sucesso: ")
           fimse

fimprocedimento

Inicio
   repita
         mostrarMenu()
         escolha opcaoMenu
         caso "1"
               cadastrar()

         caso "2"
               pesquisar()
         
         caso "3"
                editar()
         
         caso "4"
                excluir()

         outrocaso
         escreva("Opção invalida !")
        fimescolha

   ate opcaoMenu = "5"




Fimalgoritmo

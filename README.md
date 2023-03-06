# Sistema de Prova e Resultado (Portugol_VisualG)
```
Algoritmo "Prova/Aprovação"

Var
  gabarito : vetor[1..10] de caractere
  opcaoMenu: caractere
  notaFinal : inteiro
  procedimento mostraMenu()
  inicio
        Escreval("!! Escolha uma Opção !!")
        Escreval("1- Cadastrar Gabarito")
        Escreval("2- Responder Questões")
        Escreval("3- Verificar Resultado")
        Escreval("4- Sair")
        Escreval("")
        leia(opcaoMenu)
  fimprocedimento
  
  procedimento cadastrarGabarito()
  var
  i : inteiro
  inicio

        para i de 1 ate 10 faca
             Escreval("Digite o resposta do gabarito da posição ",i)
             leia(gabarito[i])
        fimpara
  fimprocedimento
  
  
funcao cadastrarProva():inteiro
  var
  i,nota: inteiro
  resultQuestao : caractere

inicio

        nota <- 0
        para i de 1 ate 10 faca
             Escreval("Digite o resultado da questão ",i)
             Escreval("")
             leia(resultQuestao)
             se resultQuestao = gabarito[i] entao
               nota <- nota + 1
             fimse
        fimpara
         retorne nota
fimfuncao
  
funcao verificaResultado(nota: inteiro): caractere
  inicio
        se nota >= 7 entao
        retorne "APROVADO"
        senao
        retorne "REPROVADO"
        fimse

  fimfuncao

Inicio

     repita
           mostraMenu()
     escolha opcaoMenu
         caso "1"
             cadastrarGabarito()

         caso "2"
              notaFinal <- cadastrarProva()

         caso "3"
              Escreval("Nota:",notaFinal)
              Escreval("Resultado: ",verificaResultado(notaFinal))
              Escreval("")
         outrocaso
                  Escreval("Opcao Invalida")
     fimescolha
     ate opcaoMenu = "4"



Fimalgoritmo

Algoritmo "semnome"

Var
 cinema: vetor[1..10, 1..10] de caractere
 opcao : caractere
 i,j, fileira, cadeira: inteiro

Inicio

para i de 1 ate 10 faca
para j de 1 ate 10 faca
     cinema[i,j] <- "0"
     
fimpara
fimpara

repita
      Escreval("1- Reservar")
      Escreval("2- Ver Layout")
      Escreval("3- sair")
      leia(opcao)
      
      escolha opcao
      caso "1"
           Escreval("Fileira: ")
           leia(fileira)
           Escreval("Cadeira")
           leia(cadeira)
              se cinema[fileira,cadeira] = "0" entao
                 cinema[fileira,cadeira] <- "X"
              senao
                 escreva("Poltrona já ocupada")
              fimse
              
       caso "2"
          para i de 1 ate 10 faca
               para j de 1 ate 10 faca
               escreva(" ",cinema[i,j]," ")
               fimpara
          fimpara
          Escreval("")
      fimescolha
ate opcao = "3"


Fimalgoritmo
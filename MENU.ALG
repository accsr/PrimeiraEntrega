Algoritmo "Menu"



Procedimento menu
Inicio
   Escreval ("Selecione uma das opções: ")
   escreval ("1- Cadastrar cliente")
   escreval ("2- Pesquisar")
   escreval ("3- Sair")
   leia (opcao)
Fimprocedimento

tipo

   cadastro = registro
      nome: caracter
      destino: caracter
      telefone: caracter
      email: caracter
   fimregistro


Var

   opcao: inteiro
   cliente: vetor [1..100] de cadastro
   i: inteiro
   respCadastro: caracter
   // variáveis para organizar
   indice: caracter
   l: inteiro
   // variáveis para pesquisar
   pesquisa: caracter

Inicio

menu
escolha opcao
   Caso 1
      Para i de 1 ate 3 faca
         Escreva ("Nome completo: ")
         Leia (cliente.nome[i])
         Escreva ("Telefone: ")
         Leia (cliente.telefone[i])
         Escreva ("Email: ")
         Leia (cliente.email[i])
         escreval ("------------------------------")
       Fimpara
//Ordenação de nomes da agenda
      Para l de 1 ate 3 passo 1 faca
         para i de 1 ate 2 passo 1 faca
            Se cliente.nome[i] > cliente.nome[i+1] entao
               indice <- cliente.nome[i]
              cliente.nome[i] <- cliente.nome[i+1]
               cliente.nome <- indice
            fimse
         fimpara
      fimpara
      menu

   Caso 2
   Escreva ("Digite o nome que deseja pesquisar: ")
      Leia (pesquisa)
         Se (pesquisa = cliente.nome[i]) entao
            Escreval (cliente.nome[i])
            Escreval (cliente.telefone[i])
            Escreval (cliente.email[i])
         Senao
            Escreva ("Nome não cadastrado!")
         Fimse
   menu

   Caso 3
   Fimescolha
Fimalgoritmo
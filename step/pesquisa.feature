# language: pt

Funcionalidade: Preencher dados de Pesquisa QA
    COMO um testador, quero preencher a pesquisa pelo formulário da página VV Test

   Cenário: Preencher pesquisa com dados obrigatórios válidos
   Dado que eu acesse a página da VV Test
   E acesse o menu "Pesquisa - QA"
   Quando eu preencher todos os campos obrigatórios 
   Então deve ser direcionado para uma página de sucesso
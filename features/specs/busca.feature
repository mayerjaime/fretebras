#language: pt

Funcionalidade: Busca
  - Eu como cliente quero efetuar testes para o Cadastro e validar o comportamento dos campos principais

@pesquisa
Cenario: Pesquisa e filtro
  Dado que estou no site da OLX
  Quando pesquiso o termo "Notebook"
  Entao devo visualizar o titulo e valor dos cinco primeiros resultados retornados

@pesquisa-screenshoot
Cenario: Pesquisa e filtro
  Dado que estou no site da OLX
  Quando pesquiso o termo "Notebook"
  E faco a paginacao
  Entao devo acessar o primeiro anuncio retornado




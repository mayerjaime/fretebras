#language: pt

Funcionalidade: Busca
  - Eu como cliente quero efetuar testes para o Cadastro e validar o comportamento dos campos principais

@pesquisa
Cenario: Pesquisa e filtro
  Dado que estou no site da OLX
  Quando pesquiso o termo "Notebook"
  Entao deve carregar os anuncios de acordo com resultado da pesquisa

@pesquisa-screenshoot
Cenario: Pesquisa e filtro
  Dado que estou no site da OLX
  Quando pesquiso o termo "Notebook"
  E acesso o primeiro anuncio da segunda pagina
  Entao deve exibir a pagina com os detalhes do anuncio




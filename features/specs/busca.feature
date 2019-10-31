#language: pt

Funcionalidade: Realizar pesquisa de produto
Como um cliente
Eu quero poder realizar pesquisas no site
Para que eu possa encontrar os produtos 

@pesquisa-simples
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




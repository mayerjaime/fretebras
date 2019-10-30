Dado('que estou no site da OLX') do
  @home.load
end

Quando('pesquiso o termo {string}') do |termo_pesquisa|
  @home.pesquisa_termo(termo_pesquisa)
end

Entao('deve carregar os anuncios de acordo com resultado da pesquisa') do
  titulos = all('.OLXad-list-title').collect(&:text)
  puts titulos.take(5)
  precos = all('.OLXad-list-price').collect(&:text)
  puts precos.take(5)
end

Quando('acesso o primeiro anuncio da segunda pagina') do
  @busca.paginacao.click
  @busca.titulo_produto.first.click
end

Entao('deve exibir a pagina com os detalhes do anuncio') do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end

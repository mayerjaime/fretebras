Dado('que estou no site da OLX') do
  @home.load
end

Quando('pesquiso o termo {string}') do |termo_pesquisa|
  @home.pesquisa_termo(termo_pesquisa)
end

Entao('devo visualizar o titulo e valor dos cinco primeiros resultados retornados') do
  titulos = all('.OLXad-list-title').collect(&:text)
  puts titulos.take(5)
  precos = all('.OLXad-list-price').collect(&:text)
  puts precos.take(5)
end

Quando('faco a paginacao') do
  @busca.paginacao.click
end

Entao('devo acessar o primeiro anuncio retornado') do
  @busca.titulo_produto.first.click
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  sleep(5)
end

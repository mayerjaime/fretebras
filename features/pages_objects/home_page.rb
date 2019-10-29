class HomePage < SitePrism::Page
  set_url '/'
  element :caixa_busca, 'input[type="search"]'
  element :btn_buscar,  '.submitBtn'

  def pesquisa_termo(termo_pesquisa)
    caixa_busca.set(termo_pesquisa)
    btn_buscar.click
  end
end

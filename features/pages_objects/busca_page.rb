class BuscaPage < SitePrism::Page
  elements  :titulo_produto,    '.OLXad-list-title'
  elements  :preco,             '.OLXad-list-price'
  element   :paginacao,         'a[title="2"]'
end

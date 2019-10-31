Before do
  @home = HomePage.new
  @busca = BuscaPage.new
end

After do ('@pesquisa-screenshot')
  page.save_screenshot('screenshot/print.png')
end

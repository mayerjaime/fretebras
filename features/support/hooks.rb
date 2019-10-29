Before do
  @home = HomePage.new
  @busca = BuscaPage.new
end

After do ('@pesquisa-screenshoot')
  page.save_screenshot('screenshoot/print.png')
end

Dado('que estou logado como {string} e {string}') do |email, password|
    @login_page.open
    @login_page.with(email, password)
end
  
Dado('que acesso o formulario de cadastro de Anúncios') do
    @dash_page.goto_equipo_form
    expect(page).to have_css "#equipoForm" #Isso é um checkpoint para garantir que estou no lugar certo
end

Dado('que eu tenho o seguinte equipamento:') do |table|
    @anuncio = table.rows_hash #converte a tabela em hash, usado quando se tem só um valor  @variavel global
    log anuncio
end
  
Quando('submeto o cadastro desse item') do
    @equipos_page.create(@anuncio)
end
  
Então('devo ser esse item no meu Dashboard') do
    anuncios = find(".equipo-list")
    expect(anuncios).to hav_content @anuncio[:nome]
    expect(anuncios).to hav_content ("R$#{@anuncio[:preco]}/dia")
end
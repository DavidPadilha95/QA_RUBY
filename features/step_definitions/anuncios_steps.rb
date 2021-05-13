Dado('que estou logado como {string} e {string}') do |email, password|
    visit"..."
    find("input[placeholder='Seu e-mail']").set email
    find("input[type=password]").set password
    click_button "Entrar"
end
  
Dado('que acesso o formulario de cadastro de Anúncios') do
    click_button "Criar anúncio"
    expect(page).to have_css "#equipoForm" #Isso é um checkpoint para garantir que estou no lugar certo
end

Dado('que eu tenho o seguinte equipamento:') do |table|
    @anuncio = table.rows_hash #converte a tabela em hash, usado quando se tem só um valor  @variavel global
    log anuncio
end
  
Quando('submeto o cadastro desse item') do

    thumb = Dir.pwd + "/features/support/fixtures/images" + @anuncio[:thumb]
    find("#thumbnail input[type=file]", visible:false).set

    find("input[placeholder$=equipamento]").set @anuncio[:nome] #o $ busca elementos com o final "equipamento" ^ começaria com "equipamento"
    find("#category").find('option', text: @anuncio[:categoria]).select_option
    find("input[placeholder^=Valor").set @anuncio[:preco] # ^começa com a palavra "Valor"

    click_button "Cadastrar"
end
  
Então('devo ser esse item no meu Dashboard') do
    anuncios = find(".equipo-list")
    expect(anuncios).to hav_content @anuncio[:nome]
    expect(anuncios).to hav_content ("R$#{@anuncio[:preco]}/dia")
end
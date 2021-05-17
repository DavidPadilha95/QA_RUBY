class EquipoPage
    include Capybara::DSL

    def create(equipo)
        #checkpoint com timeout explicito
        page.has_css?("equipoForm")

        thumb = Dir.pwd + "/features/support/fixtures/images" + equipo[:thumb]
        find("#thumbnail input[type=file]", visible:false).set #validar o elemneto mesmo se não estiver visivel
    
        find("input[placeholder$=equipamento]").set equipo[:nome] #o $ busca elementos com o final "equipamento" ^ começaria com "equipamento"
        find("#category").find('option', text: equipo[:categoria]).select_option
        find("input[placeholder^=Valor").set equipo[:preco] # ^começa com a palavra "Valor"
    
        click_button "Cadastrar"
    end
end


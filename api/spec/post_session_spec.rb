require_relative "routes/sessions" #como se eu estivesse importando essa rota
require_relative "helpers"

describe "Post /sessions" do
    context "login com sucesso" do
        before(:all) do #Before all diz para executar esse payload para todos os its dentro do contexto
            payload = {email: "betao@yahoo.com", password: "pwd123"}
            @result = Session.new.login(payload)
        end
        
        it "valida status code" do
            expect(@result.code).to eql 200
        end
      
        it "valida id od usuário" do
            expect(@result.parsed_response["_id"].length).to eql 24 #O metedo parsed_response converte a saida para hash, assim podemos pegar o response por atributos e o length serve para contar caractere de um atributo
        end
    end

    
    examples = Helpers::get_fixtures("login") #Passando o nome do meu arquivo yml

    examples.each do |e|
        context "#{e[:title]}" do
         before(:all) do
            @result = Session.new.login(e[:payload])
         end

        it "valida status code #{e[:code]}" do
            expect(@result.code).to eql e[:code]
        end
      
        it "valida retorno do erro" do
            expect(@result.parsed_response["error"]).to eql e[:error]
        end
    end
end
require_relative "routes/sessions" #como se eu estivesse importando essa rota

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

    context "login com senha errada" do
        before(:all) do #Before all diz para executar esse payload para todos os its dentro do contexto
            payload = {email: "betao@yahoo.com", password: "tetete"}
            @result = Session.new.login(payload)
        end
        
        it "valida status code" do
            expect(@result.code).to eql 401
        end
      
        it "valida retorno do erro" do
            expect(@result.parsed_response["_id"]).to eql "Unathourized"
        end
    end
end
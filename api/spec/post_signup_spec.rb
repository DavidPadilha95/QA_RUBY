require_relative "routes/signup"

describe "Post / signup" do
    context "novo usuario" do
        before(:all) do
            payload = { name: "Pitty", email: "pitty@bol.com,br", password; "pwd123"}
            @result = Signup.new.create(payload)
        end
    
        it "valida status code" do
            expect(@result.code).to eql 200
        end
    
        it "valida id od usuário" do
            expect(@result.parsed_response["_id"].length).to eql 24 #O metedo parsed_response converte a saida para hash, assim podemos pegar o response por atributos e o length serve para contar caractere de um atributo
        end
    end
end

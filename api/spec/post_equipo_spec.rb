

describe "Criando anuncios com equipamentos" do
    before(:all) do
        payload = {email: "to@mate.com", password: "pwd123"}
        result = Sessions.new.login(payload)
        @user_id = result.parsed_response["_id"]
    end



    context "Sucesso ao criar" do
        before(:all) do
            thumbnail = Helpers::get_thumb("kramer.jpg") #esse rb é para salvar a foto

            payload = {
                thumbnail: thumbnail,
                name: "Kramer Eddie",
                category: "Cordas",
                price: 299,
            }

            @result = Equipos.new.create(payload, @user_id)
        end

        it "valida status code" do
            expect(@result.code).to eql 200
        end

    end

end
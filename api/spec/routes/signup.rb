require_relative "base_api"

class Signup < BaseApi
    def create(payload)
        return self.class.post( #self.class vai invocar as propriedades da classe que no caso seria da httparty
        "/signup",
        body: payload.to_json, #Convertando o payload para json
        headers: {
            "Content-Type": "application/json",
        },
    )
end
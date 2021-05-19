require "httparty"

class Sessions
    include HTTParty
    base_uri ".."

    def login(payload)
        return self.class.post( #self.class vai invocar as propriedades da classe que no caso seria da httparty
        "/sessions",
        body: payload.to_json, #Convertando o payload para json
        headers: {
            "Content-Type": "application/json",
        },
    )
end
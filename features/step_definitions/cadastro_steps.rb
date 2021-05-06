Dado('que acesso a página de cadastro') do
    visit "https://hportal.webmotors.com.br/garagem/autopago/pesquisa?typesearch=vendedor&step=1&token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIzODgyIiwianRpIjoiMzM5MTU2YzctODc3Mi00ODFhLThjOWEtMTRiODc3ZmYzNzhmIiwiY2xpZW50IjoiMSIsImVtYWlsIjoibG8wRFROOEdlY0dHTnEyMG9aaHFsSGxsbHVUY0M4bzZKaUg4cncvSHVvUXZjUVE1TGl4YjR3PT0iLCJuYmYiOjE2MTY0MTkyMTEsImV4cCI6MTYxODIzMzYxMSwiaXNzIjoid2VibW90b3JzLmNvbS5iciIsImF1ZCI6IndlYm1vdG9ycy5jb20uYnIifQ.ea-_-g3_g82FAzmMiUSvtrcDcg2mCFPBk2KFW9vH3Zo"
    find("#initialSign_1").click
    sleep 10
end

Quando('submeto o seguinte formulario de cadastro:') do |table|
    log table.hashes #mostrando a conversao da tabela em array de objeto
    user = table.hashes.first #Convertendo a tabela em array e pegando a primeira linha
    log user #mostrando a primeira linha do array que será usada

    find("#fullName").set user[:nome]
    find("#email").set user:[:email]
    find( "#password").set user[:senha]
    click_button "Cadastrar"

end

Então('vejo a mensagem de alerta: {string}') do |mensagem_alerta| #Esse "então" vai ser utilizado para todos o steps
    alert = find(".alert dark")
    expect(alert.text). to eql mensagem_alerta
end
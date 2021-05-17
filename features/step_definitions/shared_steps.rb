##Aqui fica todos os steps compartilhados

Então('sou redirecionado para o Dashboard') do
    expect(page).to have_css ".dashboard"
    sleep 10
end

Então('vejo a mensagem de alerta: {string}') do |mensagem_alerta| #Esse "então" vai ser utilizado para todos o steps
    expect(@alert.dark).to eql mensagem_alerta
end
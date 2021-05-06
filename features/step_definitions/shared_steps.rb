##Aqui fica todos os steps compartilhados

Então('sou redirecionado para o Dashboard') do
    expect(page).to have_css ".dashboard"
    sleep 10
 end
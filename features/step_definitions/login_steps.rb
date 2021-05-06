Dado('que acesso a pagina principal') do                                         
    visit "..."
  end                                                                              
                                                                                   
  Quando('submeto minhas credenciais com {string} e {string}') do |email, password|
    find("input[placeholder='Seu e-mail']").set email
    find("input[type=password]").set password
  end                                                                              
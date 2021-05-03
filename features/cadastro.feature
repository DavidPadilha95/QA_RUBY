#language: pt


Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponibiliza-los para locação

    @temp
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro completo
        Então sou redirecionado para o Dashboard

    Cenario: Submeter cadastro sem o nome
        Dado que eu acesso a página de cadastro
        Quando submeto o meu cadastro sem o nome
        Então vejo a mensagem de alerta: Oops. Informe seu nome completo!

    Cenario: submeter cadastro sem o email
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o email
        Então vejo a mensagem de alerta: Oops. Informe seu email valido!

    Cenario: submeter cadastro com o email incorreto
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com o email incorreto
        Então vejo a mensagem de alerta: Oops. Informe um email valido!

    Cenario: submeter cadastro sem a senha
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então vejo a mensagem de alerta: Oops. Informe sua senha secreta!

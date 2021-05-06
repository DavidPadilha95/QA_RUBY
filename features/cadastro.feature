#language: pt


Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponibiliza-los para locação

    @cadastro
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome         |     email     |senha |
            |David Padilha|david@teste.com|pwd123|
        Então sou redirecionado para o Dashboard

    @tentativa_cadastro
    Cenario: Submeter cadastro sem o nome
        Dado que eu acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome         |     email     |senha |
            |             |david@teste.com|pwd123|
        Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

    @tentativa_cadastro
    Cenario: submeter cadastro sem o email
        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome         |     email     |senha |
            |David Padilha|               |pwd123|
        Então vejo a mensagem de alerta: "Oops. Informe seu email valido!"

    @tentativa_cadastro
    Cenario: submeter cadastro com o email incorreto
        Dado que acesso a página de cadastro
       Quando submeto o seguinte formulario de cadastro:
            |nome         |     email     |senha |
            |David Padilha|    dagfdgm    |pwd123|
        Então vejo a mensagem de alerta: "Oops. Informe um email valido!"

    @tentativa_cadastro
    Cenario: submeter cadastro sem a senha
        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome         |     email     |senha |
            |David Padilha|david@teste.com|      |
        Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"

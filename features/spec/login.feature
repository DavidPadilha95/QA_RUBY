#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a pagina principal
        Quando submeto minhas credenciais com "david@teste.com" e "pwd123"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentar logar

        Dado que acesso a pagina principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input       | senha_input | mensagem_output                  |
            | naotes@naotem.com | dsadsa      | Usuário e/ou senha inválidos     |
            | david@teste.com   | ds          | Usuário e/ou senha inválidos     |
            | fernan###.com.br  | teste       | Oops. Informe um email válido!   |
            |                   | teste       | Oops. Informe um email válido!   |
            | fernan###.com.br  |             | Oops. Informe sua senha secreta! |
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
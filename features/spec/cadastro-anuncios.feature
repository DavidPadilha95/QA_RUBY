#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibilizar para locação

    Cenario: Novo equipo
        Dado que estou logado como "teteete" e "pwd123"
        E que acesso o formulario de cadastro de Anúncios
        E que eu tenho o seguinte equipamento:
            | thumb     | fender-sa.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ser esse item no meu Dashboard
#language: pt


Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponibiliza-los para locação

    @cadastro
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            | nome          | email           | senha  |
            | David Padilha | david@teste.com | pwd123 |
        Então sou redirecionado para o Dashboard


    Esquema do Cenario: Tentativa de cadastro

        Dado que eu acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            | nome         | email       | senha       |
            | <nome_input> | email_input | senha_input |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input    | email_input     | senha_input | mensagem_output                  |
            |               | david@teste.com | pwd123      | Oops. Informe seu nome completo! |
            | David Padilha |                 | pwd123      | Oops. Informe seu email valido!  |
            | David Padilha | david##kdj.com  | pwd123      | Oops. Informe seu email valido!  |
            | David Padilha | david@teste.com |             | Oops. Informe sua senha secreta! |

# O "Esquema do cenario" usamos quando o input(entrada) e output(saida) são iguais
# Nesse caso a finalidade do teste é ver os possíveis cenários de erro por isso conseguimos
# juntar tudo.

#Usando o tituo das tabela dentro do cenario, ele vai executar linha por linha

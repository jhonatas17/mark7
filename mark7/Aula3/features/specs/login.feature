#language: pt

Funcionalidade: Login
    Para que somente eu possa ver as minhas tasks
    Sendo um usuário cadastrado
    Posso logar no sistema


    Contexto: Formulário
        Dado que acessei o formulário de login

    @logout @login
    Cenario: Login do usuário

        Quando faço login com "jhonatas@qaninja.net" e "123456"
        Então sou autenticado com sucesso

    Esquema do Cenario: Dados inválidos
        
        Quando faço login com "<email>" e "<senha>"
        Então vejo a mensagem de alerta de login "<saida>"

    
    Exemplos:

        | email                 | senha     | saida                       |
        | jhonatas@qaninja.net  | 654321    | Senha inválida.             |
        | jhonatas@qaninja.com  | 123456    | Usuário não cadastrado.     |
        | jhonatass@qaninja.net | 123456    | Email incorreto ou ausente. |
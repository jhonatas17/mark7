#language: pt

Funcionalidade: Login
    Para que somente eu possa ver as minhas tasks
    Sendo um usuário cadastrado
    Posso logar no sistema

    # depois de implementar, transformar os cenários sem sucesso para scenario outline (esquema do cenário)

    Contexto: Formulário
        Dado que acessei o formulário de login

    Cenario: Login do usuário

        Quando faço login com "eu@papito.io" e "123456"
        Então sou autenticado com sucesso

    Cenario: Senha inválida
        
        Quando faço login com "eu@papito.io" e "xpto123"
        Então vejo a mensagem de alerta "Senha inválida."

    Cenario: Usuário não cadastrado

        Quando faço login com "padre.kevedo@noekxiste.org" e "123456"
        Então vejo a mensagem de alerta "Usuário não cadastrado."

    Cenário: Email incorreto

        Quando faço login com "eu&papito.io" e "xpto123"
        Então vejo a mensagem de alerta "Email incorreto ou ausente."
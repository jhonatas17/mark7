#language: pt
Funcionalidade: Cadastro de usuários
    Sendo um visitante
    Posso fazer meu cadastro
    Para poder gerenciar minhas tarefas

    Contexto: Formulário
        Dado que eu estou no formulário de cadastro

    @logout @limpa_usuario
    Cenário: Cadastro simples
        
        E possuo os seguintes dados:
            | nome  | Jhonatas             |
            | email | jhonatas@qaninja.net |
            | senha | 123456               |
        Quando faço o meu cadastro 
        Então vejo a mensagem "Olá, Jhonatas"
  
    Cenario: Senha com minimo de caracteres

        E possuo os seguintes dados:
            | nome  | Jhonatas             |
            | email | jhonatas@qaninja.net |
            | senha | 12345                |
        Quando faço o meu cadastro
        Então vejo a mensagem de alerta "Sua senha deve ter pelo menos 6 caracteres."
 
    Cenario: Email incorreto

        E possuo os seguintes dados:
        | nome  | Jhonatas             |
        | email | jhonatassqaninja.net |
        | senha | 123456               |
        Quando faço o meu cadastro
        Então vejo a mensagem de alerta "Informe um email válido."

    @limpa_usuario
    Cenario: Cadastro duplicado

        E possuo os seguintes dados:
            | nome  | Jhonatas             |
            | email | jhonatas@qaninja.net |
            | senha | 123456               |
        Mas ja existe um cadastro para o email informado
        Quando faço o meu cadastro
        Então vejo a mensagem de alerta "Email já existe"

    @required
    Esquema do Cenario: Campos obrigatórios

        E possuo os seguintes dados:
        | nome  | <nome>  |
        | email | <email> |
        | senha | <senha> |
        Quando faço o meu cadastro 
        Então vejo a mensagem "<saida>"

        Exemplos:
            | nome     | email                | senha  | saida                |
            |          | jhonatas@qaninja.net | 123456 | Nome é obrigatório.  |
            | Jhonatas |                      | 123456 | Email é obrigatório. |
            | Jhonatas | jhonatas@qaninja.net |        | Informe uma senha.   |
 

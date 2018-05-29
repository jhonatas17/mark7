#language: pt

Funcionalidade: Cadastrar tarefas
    Para que eu possa organizar minhas atividades
    Sendo um usuário cadastrado
    Posso cadastrar nova tarefas

    @autenticado @logout
    Cenario: Nova tarefa

        Dado que o nome da tarefa é "Ler um livro de mongodb"
        E a data de conclusão é "12/12/2018"     
        E eu quero taguear esta tarefa com:
            | tag     |
            | mongodb |
            | estudar |
            | livro   |
            | leitura |
        Quando faço o cadastro desta tarefa
        Então devo ver esta tarefa na lista com o status "Em andamento"
        E devo ver também somente 1 tarefa o nome cadastrado

    @autenticado @logout @tarefa_duplicada
    Cenario: Tarefa não pode ser duplicada

       Dado que o nome da tarefa é "Ler um livro de Go"
        E a data de conclusão é "12/12/2018"     
        E eu quero taguear esta tarefa com:
            | tag     |
            | mongodb |
            | estudar |
            | livro   |
            | leitura |
            | go      |
        Mas eu já cadastrei esta tarefa e não tinha percebido
        Quando faço o cadastro desta tarefa
        Então devo ver a mensagem "Tarefa duplicada." ao tentar cadastrar  
        E devo ver também somente 1 tarefa o nome cadastrado
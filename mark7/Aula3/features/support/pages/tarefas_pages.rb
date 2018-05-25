
# Adicionar é classe que representa a seção da sub página Adicionar Tarefas
class Adicionar < SitePrism::Section
    element :campo_nome, '#title'
    element :campo_data, '#dueDate'
    element :campo_tags, '.bootstrap-tagsinput input'
    element :botao_cadastrar, '#form-submit-button'
    element :alerta, '.alert-warn'

    def nova(nome, data_tarefa, tags)
        campo_nome.set nome
        campo_data.set data_tarefa
        adicionar_tags(tags)
        botao_cadastrar.click
    end    

    def adicionar_tags(tags)
        tags.each do |t|
            campo_tags.set t[:tag]
            campo_tags.send_keys :tab
        end      
    end    
end    


# Representa a pagina principal onde temos a lista de tarefas
class TarefasPage < SitePrism::Page
    element :botao_adicionar, '#insert-button'
    section :adicionar, Adicionar, '#add-task-view'
end    
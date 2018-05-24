
Dado("que o nome da tarefa é {string}") do |nome_tarefa|
    @nome_tarefa = nome_tarefa
  end
  
  Dado("a data de conclusão é {string}") do |data_conclusao|
    @data_conclusao = data_conclusao
  end
  
  Dado("eu quero taguear esta tarefa com:") do |table_tags|
     @tags = table_tags.hashes
  end
  
  Quando("faço o cadastro desta tarefa") do
    @tarefas_page.botao_adicionar.click
    @tarefas_page.adicionar.nova(@nome_tarefa, @data_conclusao, @tags)
  end
  
  Então("devo ver esta tarefa na lista com o status {string}") do |status_tarefa|
    pending # Write code here that turns the phrase above into concrete actions
  end
 
  Dado("eu já cadastrei esta tarefa e não tinha percebido") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("devo ver a mensagem {string} ao tentar cadastrar") do |mensagem_alerta|
    pending # Write code here that turns the phrase above into concrete actions
  end
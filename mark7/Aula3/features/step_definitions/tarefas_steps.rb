
  Dado("que o nome da tarefa é {string}") do |nome_tarefa|
    @nome_tarefa = nome_tarefa
    DAO.new.remover_tarefas(@nome_tarefa)
  end
  
  Dado("a data de conclusão é {string}") do |data_conclusao|
    @data_conclusao = data_conclusao
  end
  
  Dado("eu quero taguear esta tarefa com:") do |table_tags|
    @tags = table_tags.hashes
  end
  
  Dado("eu já cadastrei esta tarefa e não tinha percebido") do
    steps %(
      Quando faço o cadastro desta tarefa
    ) 
  end

  Quando("faço o cadastro desta tarefa") do
    @tarefas_page.botao_adicionar.click
    @tarefas_page.adicionar.nova(@nome_tarefa, @data_conclusao, @tags)
  end
  
  Então("devo ver esta tarefa na lista com o status {string}") do |status_tarefa|
    tarefa_cadastrada = find('table tbody tr', text: @nome_tarefa)
    expect(tarefa_cadastrada).to have_content status_tarefa
  end
  
  Então("devo ver a mensagem {string} ao tentar cadastrar") do |mensagem_alerta|
      res =  @tarefas_page.adicionar.alerta.text
      expect(res).to eql mensagem_alerta
  end

  Então("devo ver também somente {int} tarefa o nome cadastrado") do |quantidade|
    @tarefas_page.load
    @tarefas_page.busca(@nome_tarefa)
    expect(@tarefas_page.lista.size).to eql quantidade
  end
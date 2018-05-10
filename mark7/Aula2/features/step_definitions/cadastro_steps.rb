Dado('que eu estou no formulário de cadastro') do
  visit '/register'
end

Dado('possuo os seguintes dados:') do |table|
  @usuario = table.rows_hash
end

Dado('ja existe um cadastro para o email informado') do
  steps %(
    Quando faço o meu cadastro
  )
  sleep 2
  visit '/logout'
  sleep 2

  steps %(
    Dado que eu estou no formulário de cadastro
  )
end

Quando('faço o meu cadastro') do
  find('#register_name').set @usuario[:nome]
  find('input[name=register_email]').set @usuario[:email]
  find('input[type=password]').set @usuario[:senha]

  find('button[type=submit]').click
end

Então('vejo a mensagem {string}') do |ola_usuario|
  expect(page).to have_content ola_usuario
end

Então('vejo a mensagem de alerta {string}') do |mensagen_alerta|
  div_alerta = find('.alert-message')
  expect(div_alerta.text).to eql mensagen_alerta
end

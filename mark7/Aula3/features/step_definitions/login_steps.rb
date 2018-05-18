Dado("que acessei o formulário de login") do
    visit '/login'
end
  
Quando("faço login com {string} e {string}") do |email, senha|
    find('#login_email').set email
    find('#login_password').set senha

    find('button[id*=btnLogin').click

    @email = email
end
  
Então("sou autenticado com sucesso") do
    navbar = find('.navbar')
    expect(navbar).to have_content @email
end 

Então('vejo a mensagem de alerta de login {string}') do |mensagem_alerta|
    div_alerta = find('.alert-login .panel-body')
    expect(div_alerta.text).to eql mensagem_alerta
end    
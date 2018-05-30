

Before  do
    @cadastro_page = CadastroPage.new
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @navbar = Navbar.new
    page.current_window.resize_to(1440,900)
end

Before('@autenticado') do
    @login_page.load
    @login_page.logar('jhonatas@qaninja.net', '123456')
    @navbar.wait_for_nav
end    

#Before('@limpa_usuario') do
#    visit '/api/reset/jhonatas@qaninja.net?clean=full'
#    visit '/api/reset/jhonatas@qaninja.net?clean=full'
#end

After('@logout') do
    @navbar.desloga
    @login_page.wait_for_campo_email
end

After do |scenario|
   nome = scenario.name.tr(' ', '_').downcase!
   nome = nome.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*^\$\+\-]+)/,'')
   screenshot = "log/shots/#{nome}.png"
   page.save_screenshot(screenshot)
   embed(screenshot, 'image/png', 'Clique aqui para ver as evidencias!')
end



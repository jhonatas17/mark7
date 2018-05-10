

Before('@limpa_usuario') do
  visit '/api/reset/jhonatas@qaninja.net?clean=full'
  visit '/api/reset/jhonatas@qaninja.net?clean=full'
end

After('@logout') do
  visit '/logout'
  sleep 2
end




Before('@limpa_usuario') do
  reset_email = ENV['TEST_USER_EMAIL'] || 'jhonatas@qaninja.net'
  # Use environment variable for reset endpoint
  reset_endpoint = ENV['RESET_ENDPOINT_URL']
  if reset_endpoint
    visit "#{reset_endpoint}/#{reset_email}?clean=full"
    visit "#{reset_endpoint}/#{reset_email}?clean=full"
  else
    # Fallback if not configured
    warn 'RESET_ENDPOINT_URL not configured in environment'
  end
end

After('@logout') do
  visit '/logout'
  sleep 2
end


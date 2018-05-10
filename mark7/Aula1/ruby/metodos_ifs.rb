
# funcionalidade: deve exibir uma resposta para o usuário
# se o testador encontrou ou não 1 bug

# def achou_bug(resposta)
#   if resposta == 1
#     puts 'Informe o desenvolvedor.'
#   elsif resposta == 0
#     puts 'Beleza. Pode ir para produção.'
#   else
#     puts 'Código incorreto.'
#   end
# end

def achou_bug(resposta)
  case resposta
  when 1
    puts 'Informe o desenvolvedor.'
  when 0
    puts 'Beleza. Pode ir para producão.'
  else
    puts 'Código incorreto.'
  end
end

puts 'Bem vindo. Qual o resultado do teste?'
puts 'Informe 0, se é sem bugs'
puts 'Informe 1, se encontrou bugs'

resultado = STDIN.gets.to_i
achou_bug(resultado)

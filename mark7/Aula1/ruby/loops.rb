
# criando um array com 3 posições
instrutores = ['Fernando', 'Herbert', 'Oscar']

# inserir mais um item no array
instrutores.push('Rafael')
instrutores.push('Papito')

# tamanho do array
puts instrutores.size

# imprime por posição de 0 a 3
# puts instrutores[4]

# def imprime_fernando(item)
#   if item == "Fernando"
#     puts item
#   end
# end

# imprime_fernando(instrutores[1])

# Foreach do Ruby
# instrutores.each do |i|
#   puts i
# end

# For
# for i in (0..instrutores.size-1)
#   puts instrutores[i]
# end

# While
# Deve imprimir todos os instrutores
init = 0
max = instrutores.size-1

while init < max
    puts instrutores[init]
    init += 1
end
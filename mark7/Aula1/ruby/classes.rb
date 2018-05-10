

class Animal
  attr_accessor :nome, :cor, :idade, :raca

  # construtor
  def initialize(nome, cor, idade)
    @nome = nome
    @cor = cor
    @idade = idade
  end

  def mostra_raca
    puts @raca
  end
end

# Cachorro é classe que representa a entidade cachorro
class Cachorro < Animal
  def late
    puts "#{@nome} diz: Au, au"
  end
end

class Gato < Animal
  def mia
    puts "#{@nome} diz: Miau"
  end
end

class Pato < Animal
  def grasna
    puts "#{@nome} diz: Quack, quack..."
  end
end

spike = Cachorro.new('Spike', 'Cinza', 5)
spike.raca = 'Buldog'
spike.late

snoop = Cachorro.new('Snoop', 'Branco', 2)
snoop.raca = 'Beagle'
snoop.late

tom = Gato.new('Tom', 'Cinza', 3)
tom.raca = 'Perça'
tom.mia
tom.mostra_raca

patolino = Pato.new('Patolino', 'Preta', 10)
patolino.grasna

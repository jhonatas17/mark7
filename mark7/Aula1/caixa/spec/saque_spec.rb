# Software
class Conta
  attr_accessor :saldo

  def initialize(saldo)
    @saldo = saldo
  end

  def saca(valor)
    if valor > @saldo
      'Saldo insuficiente para saque.'
    else
      @saldo -= valor
      "Saque com sucesso. Seu saldo agora é de R$ #{@saldo}"
    end
  end
end

# Teste

describe('Saque no caixa eletronico') do
  it('deve fazer um saque') do
    c = Conta.new(1000)
    resultado = c.saca(500)

    expect(c.saldo).to eql 500
    expect(resultado).to eql 'Saque com sucesso. Seu saldo agora é de R$ 500'
  end

  it('quando o cliente não tem saldo disponível') do
    c = Conta.new(0)
    resultado = c.saca(500)

    expect(c.saldo).to eql 0
    expect(resultado).to eql 'Saldo insuficiente para saque.'
  end

  it('quando o valor do saque superior ao saldo do cliente') do
    c = Conta.new(300)
    resultado = c.saca(500)

    expect(c.saldo).to eql 300
    expect(resultado).to eql 'Saldo insuficiente para saque.'
  end

  it('quando o valor do saque é superior ao máximo por transação') do
    c = Conta.new(1000)
    resultado = c.saca(701)

    expect(c.saldo).to eql 1000
    expect(resultado).to eql 'Valor máximo para saque deve ser de R$ 700'
  end
end

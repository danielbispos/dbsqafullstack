

class Conta
    attr_accessor :saldo, :nome
    
    # Método construtor para inicialização da variável a partir do instanciamnento da classe
    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        # Valor sendo convertido em String através do "".to_s"
        # puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        # Valor concatenado por interpolação (e não conversão) de strings
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
    end
end

c = Conta.new('Grupo de teste Bope and Seal')

c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome
# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque no Ruby tudo são objetos

# Classe organiza ações e atributos para um determinado objeto do mundo real
# Classe possui atributos e métodos
# Características e ações

# Carro (nome, Marca, Modelo, Cor, Quantidade de Portas, etc...)
# Ligar, Businar, Parar, etc...

class Carro
    attr_accessor :nome
    def ligar
        puts 'O carro está pronto para iniciar o trajeto.'
    end
end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.ligar
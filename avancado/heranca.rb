# HERANÇA permite que atributos e comportamentos de uma classe sejam utilizados por outra classe
# No exemplo abaixo Veiculo é uma superclasse (classe pai) e Carro e Moto são subclasses (classes filhas)

# Na superclasse estão definidos atributos e métodos comuns
class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
    puts "#{nome} está pronto para iniciar o trajeto!"
    end
    
    def buzinar
        puts 'Beep! Beep!'
    end

    def dirigir
        puts "#{nome} iniciando o trajeto."
    end
end

# Nas subclasses estão definidos atributos e métodos específicos
class Carro < Veiculo
    def dirigir
        puts "#{nome} iniciando o trajeto."
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} iniciando o trajeto."
    end
end

# Os métodos da superclasse e subclasses podems ser invocados uniformemente
civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new('Fazer', 'Yamaha', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar
# A suite não pode ser executada sem a criação de uma classe
# O método PUT deve ser criado
# Método PUSH não deve ser tipo nulo, e sim array
# Deve ser criado um construtor sem argumento, porém que transforma a lista em um Array
# Como a classe passa a devolver um objeto lista, não pode ser verificada comparando com uma String,
# tendo em vista que a comparação espera um Array
# Transformar a String em Array
# As alterações acima foram realizadas considerando a necessidade do teste, adaptando o código

class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

# TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to include 'Spiderman'
    end

    # Método INCLUDE valida se há um item em uma lista
    # Método SIZE valida a quantidade de itens em uma lista. Só funciona para uma lista.
    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
        expect(res).to be true
    end

    # Método START_WITH verifica se é o primeiro da lista
    it 'thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    # Método END_WITH verifica se é o último da lista
    it 'Ironman debe ser o último da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    # Método MATCH verifica através de uma expressão regular se há o conteúdo descrito entre "/" na variável
    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Daniel/)
    end
end
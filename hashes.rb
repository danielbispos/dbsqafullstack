# HASH é uma coleção de dados que se parece com ARRAYS, porém indexada por chave-valor ao invés de inteiros

carro = Hash[nome: 'Civic', marca: 'Honda', cor: 'Vermelho']
#puts carro

# É possível acessar as informações através das chaves

puts carro[:marca]

# Pode-se criar uma nova chave em outro setor do código - atentar à forma de atribuição, onde o Ruby a trata de forma dinâmica

carro[:modelo] = 'SI'
puts carro
# A estrutura de repetição TIMES é simples, bastando indicar a quantidade de vezes a repetir com um numeral 
# É possível adicionar uma iteração para trabalhar com contador

# 5.times do |i|
#     puts 'Repetindo a mensagem ' + i.to_s + ' vez(es)'
# end

# Na estrutura de repetição WHILE é necessário delcarar uma variável de repetição antes do código e utilizá-la como condicional
# de interrupção, realizando incremento dentro do laço

# init = 0

# while init <= 10 do
#     puts 'Repetindo a mensagem ' + init.to_s + ' vez(es)'
#     init +=1
# end

# A estrutura de repetição FOR considera a posição zero e a variável de incremento é declarada dentro do laço

# for item in(0...10)
#     puts 'Repetindo a mensagem ' + item.to_s + ' vez(es)'
# end

# Arrays
# Arrays não necessitam de declaração do tamanho das posições ou de quantidade, basta acrescentar/ remover

vingadores = ['Ironman', 'Hulk', 'Spiderman', 'thor']

vingadores.each do |v|
    puts v
end
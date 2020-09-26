# BEGIN é compatível com o TRY do Java e outras linguagens - bloco reservado a tentativa de uma ação.
# RESCUE é compatível com o CATCH do Java e outras linguagens - bloco reservado ao tratamento do possível erro
# begin
#     # Devo tentar alguma coisa
#     # Arquivos devem ser informados com sua extensão
#     file = File.open('./ola.txt')
#     if file
#         puts file.read
#     end
# rescue Exception => e
#     # Obter um possível erro
#     # Atributo <.MESSAGE> da exceção para coletar a mensagem
#     puts e.message
#     puts e.backtrace
# end

# Método híbrido para executar a ação e coletar a mensagem caso dê erro
# O retorno do erro coletado no trecho do EXCEPTION pode ser customizado com uma mensagem mais amigável ao usuário
def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts 'Erro ao executar a soma.'
end

soma('10', 5)
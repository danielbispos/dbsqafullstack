
# Suíte de testes
# TAG ":dropdown" para execução somente do cenário/ suíte que a contém 
describe 'Caixa de opções', :dropdown do

    # Cenário de teste
    it 'item especifico simples' do
        # Acesso à página
        visit '/dropdown'
        
        # Seleciona conteúdo do tipo OPTION
        select('Loki', from: 'dropdown')
        
        sleep 3 # temporário
    end

    it 'item especifico com o find' do
        # Acesso à página
        visit '/dropdown'
        
        # Variável "drop" guarda a busca do método FIND via CSS slector através do elemento classe
        # Caso o elemento não possua um identificador (ID)
        drop = find('.avenger-list')
        
        # Busca dentro do "avenger-list" ("select")
        # Método FIND busca um elemento
        # Método SELECT_OPTION seleciona a opção caso encontrada
        drop.find('option', text: 'Scott Lang').select_option
        
        sleep 3 # temporário
    end

    it 'qualquer item', :sample do
        # Acesso à página
        visit '/dropdown'
        
        # Busca dentro do "avenger-list" ("select")
        drop = find('.avenger-list')

        # Método ALL retorna (busca) um Array com todos os elementos
        # O recurso do Ruby SAMPLE sorteia uma opção qualquer dentro de um Array
        # SLECTION_OPTION seleciona a opção sorteada
        drop.all('option').sample.select_option
    end

end
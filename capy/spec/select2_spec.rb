describe 'Select2', :select2 do

    describe('single', :single) do
        before(:each) do
            visit 'http://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'seleciona ator por nome' do
            # Clicar para abrir as opções do select2
            find('.select2-selection--single').click
            sleep 1
            # Clica em uma opção da lista
            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 5
        end

        it 'busca e clica no ator' do
            find('.select2-selection--single').click
            sleep 1
            # Busca informando uma opção
            find('.select2-search__field').set 'Chris Rock'
            sleep 1
            find('.select2-results__option').click
            sleep 5
        end
    
    end

    describe('multiple', :multi) do
        before(:each) do
            visit 'http://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end

        # Método SELECIONE para buscar e clicar em qualquer ator
        def selecione(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end

        it 'seleciona atores' do

            # Array com nome dos atores
            atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James']

            # FOR para inserir atores no campo de busca
            atores.each do |a|
                selecione(a)
            end
            sleep 5

        end
    
    end
    
end
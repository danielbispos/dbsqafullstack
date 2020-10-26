
describe 'Caixas de seleção', :checkbox do

    # Método BEFORE que determina sua execução antes de todos os cenários
    before(:each) do
        visit '/checkboxes'
    end

    it 'marcando uma opção' do
        # Marcar a opção. Funciona no input para os atributos ID ou name
        check('thor')
    end

    it 'desmarcando uma opção' do
        # Desmarcar a opção. Funciona no input para os atributos ID ou name
        uncheck('antman')
    end

    # Quando não é possível buscar pelo ID ou name, o elemento pode ser encontrado pelo VALUE
    # Após utilizar o SET(TRUE / FALSE)
    # VALUE é obrigatório no checkbox
    it 'marcando com find set true' do
        find('input[value=cap]').set(true)
    end

    it 'desmarcando com find set false' do
        find('input[value=guardians]').set(false)
    end

    # Método AFTER que determina sua execução após todos os cenários
    after(:each) do
        sleep 3
    end 

end
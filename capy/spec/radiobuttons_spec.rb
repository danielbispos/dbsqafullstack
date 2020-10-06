
describe 'Botões de Radio', :radio do

    # Método BEFORE determina que sua execução ocorra antes de todos os cenários
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'seleçao por ID' do
        # Escolhe/ seleciona a opção
        choose('cap')
    end

    it 'seleção por find e css selector' do
        # Encontra a opção através do VALUE e seleciona com o evento de CLICK
        find('input[value=guardians]').click
    end

    # Método AFTER determina que sua execução ocorra após todos os cenários
    after(:each) do
        sleep 3
    end 

end
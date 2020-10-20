
# Cria a suite de testes do formulário de Login
describe 'Forms' do

    # Cria o cenário de teste de login com sucesso 
    it 'login com sucesso' do
        
        # Abre a página em acordo com as configurações do arquivo "spec_helper.rb" do projeto
        visit 'http://training-wheels-protocol.herokuapp.com/login'

        # Preenche o campo do tipo INPUT através do atributo html ID [userId] ou NAME [password]
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        
        # Clica no botão do tipo BUTTON acessando o NOME para fazer Login
        click_button 'Login'

        # O método VISIBLE pergunta se existe o elemento encontrado no html da mensagem
        # Valida através do retorno do método VISIBLE [TRUE]
        expect(find('#flash').visible?).to be true

        # Obtém o texto da mensagem e valida se a String está contida no retorno
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        # Valida se a String está contida no elemento (recurso do próprio Capybara)
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

        # Adicionalmente, para validar se o texto é idêntico utilizar o EQL
        # expect(find('#flash').text).to eql "Olá, Tony Stark. Você acessou a área logada!\n×"

    end

    # Aula 04 - Exercício: Um pouco mais sobre notificações
    it 'senha incorreta' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvi'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'Senha é invalida!'
    end
    
    
    it 'usuário não cadastrado' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'BopeAndSeal'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'    
    end

end

# DESCRIBE é uma palavra reservada do rspec - Cria uma suíte de testes
describe "Meu primeiro script" do
    # IT é uma palavra reservada que cria um caso/ script de teste
    it "visitar a página" do
        # Abrir uma página
        visit "http://training-wheels-protocol.herokuapp.com/"
        # Valida título da página
        expect(page.title).to eql "Training Wheels Protocol"

        # Para aguardar a página aberta por 5 segundos
        # sleep 5
    end
end
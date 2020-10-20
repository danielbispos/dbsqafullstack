describe 'IDs Dinâmicos', :ids_dinamicos do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/access'
    end

    it 'cadastro' do
        # [$] => termina com (PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput)
        find('input[id$=UsernameInput]').set 'BopeAndSeal'
        # [^] => começa com (PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt)
        find('input[id^=PasswordInput').set '123456'
        # [*] => contém (PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block)
        find('a[id*=GetStartedButton').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
    end

end
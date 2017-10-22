#enconding: utf-8

Dado(/^acessa página de login$/) do
  @login.load
end

Dado(/^que eu tenho um usuário:$/) do |table|
  @user = OpenStruct.new(table.rows_hash)
  #puts @user.email
  #puts @user.senha
end

Quando(/^faço login$/) do
  #visit '/login'
  #find('#email').set @user.email
  #find('input[placeholder*=senha]').set @user.senha
  #find('.login-button').click 
  #@login.load # => visit do capybara
  @login.with(@user.email, @user.senha)
  #@login.email.set @user.email
  #@login.senha.set @user.senha
  #@login.sign_in.click


  #sleep(5)
end

Então(/^vejo o dashboard$/) do
  
  expect(@nav.usermenu.text).to eql @user.email
  
  #within('#navbar') do
    #usermenu = find('a[data-toggle=dropdown]').text
    #expect(usermenu).to eql @user.email
  #end
end

Então(/^a mensagem "([^"]*)"$/) do |messagem|
  
  #title = find('#page_title').text
  #expect(title).to eql messagem
  expect(@dash.title.text).to eql messagem

end

##FLUXO DE EXCEÇÃO

Dado(/^que eu tenho um usuário "([^"]*)" e "([^"]*)"$/) do |email, senha|
  @user = OpenStruct.new(
    :email => email,
    :senha => senha
  )
  
end

Então(/^vejo a mensagem "([^"]*)"$/) do |mensagem|

  expect(@login.alert.text).to include mensagem

  #alert = find('div[class$=alert-warning]').text
  #expect(alert).to include mensagem
end






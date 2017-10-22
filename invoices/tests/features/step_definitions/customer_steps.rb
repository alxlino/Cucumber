#encoding: utf-8

Dado(/^usuário logado acessa página clientes$/) do
  @login.load
  @login.with("kato.danzo@qaninja.com.br","secret")
  @dash.wait_for_title
  @customer.load
end

Dado(/^que eu tenho um novo cliente:$/) do |table|                           
  @user = OpenStruct.new(table.rows_hash)
end                                                                          
                                                                             
Quando(/^faço cadastro desse cliente$/) do                                   
  @customer.save(@user)
end                                                                          
                                                                             
Então(/^esse cliente deve ser exibido na busca$/) do                    
  @customer.search(@user.email)
  expect(@customer.view.size).to eql 1
  expect(@customer.view.first.text).to include @user.nome
  expect(@customer.view.first.text).to include @user.email
  expect(@customer.view.first.text).to include @user.telefone
end                                                                          
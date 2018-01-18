#enconding: utf-8

Dado("que eu tenho um usuario não cadastrado") do |table|
 @user = OpenStruct.new(table.rows_hash)
 puts @user.cnpj
 puts @user.senha
 
end
Quando("tento Logar") do
    visit 'https://plataforma.fdex.com.br'
    find('#company-login-block').click
    sleep(30)
    find('#loginCompany_CNPJ').set @user.cnpj
    find('#loginCompany_Password').set @user.senha
    find('#loginCompany_LoginBtn').click
end

Então("vejo a mensagem {string}") do |msg|

     expect(page).to have_content 'Credenciais inválidas. Por favor verifique.'
     
    #within ('.') do
      # alert = "Credenciais inválidas. Por favor verifique." 
      # alerta = find('.has-error[placeholder$=Credenciais]').text
      # expect(alerta).to eql alert
       
   #end
end

#Dado("que eu tenho um usuário com cnpj  {string} e senha {string} inválidos") do |cnpj, senha|
 #   @user = OpenStruct.new(
  #  :cnpj => cnpj ,
  #  :senha => senha
  #  )
#end





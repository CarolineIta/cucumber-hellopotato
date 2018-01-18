#language: pt

Funcionalidade: Login

Sendo um usuário do tipo empresa
Posso Logar no sistema fx
Para que possa visualizar e cadastrar suas necessidades de crédito

Cenário: Empresa Faz Login com cnpj válido e  não cadastrado 

Dado que eu tenho um usuario não cadastrado
    |cnpj| 11779111/0001-64|
    |senha|123456|
Quando tento Logar
Então vejo a mensagem "Credenciais inválidas. Por favor verifique."







#Cenário: Empresa Faz Login com cnpj inválido

#Dado que eu tenho um usuário com cnpj  "11111111111" e senha "1234" inválidos
#Quando tento Logar
#Então vejo  mensagem "O CNPJ é Inválido"




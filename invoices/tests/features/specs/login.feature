#language: pt


Funcionalidade: Login
    Sendo um usuário
    Posso logar no sistema Invoices
    Para cadastrar clientes e também lançar cobranças

@doing
Cenário: Acesso
    * acessa página de login


@logout
Cenário: Adminstrador faz login

    Dado que eu tenho um usuário:
    |email|kato.danzo@qaninja.com.br|
    |senha|          secret         |
    Quando faço login
    Então vejo o dashboard
        E a mensagem "Bem Vindo Kato Danzo!"

Esquema do Cenário: Tentativa de login

    Dado que eu tenho um usuário <email> e <senha>
    Quando faço login
    Então vejo a mensagem <msg>

    Exemplos:
    |           email           |  senha |                msg               |
    |"kato.danzo@qaninja.com.br"|"123456"|       "Incorrect password"       |
    |  "kato.danzo@qaninja.net" |"secret"|         "User not found"         |
    |"kato.danzo&qaninja.com.br"|"secret"|"Please enter your e-mail address"|
 
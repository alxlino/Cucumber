#language: pt


Funcionalidade: Cadastro de Clientes
    Sendo um usuário posso do Invoices
    Posso cadastrar novos clientes
    Para fins de gerenciamento e também atendimento

Contexto: Acesso a página cliente
    * usuário logado acessa página clientes

Cenário: Cadastro de novo cliente
    Ao cadastrar um novo cliente, o mesmo
    deve ser exibido na busca

Dado que eu tenho um novo cliente:
      | nome     | Roberval           |
      | telefone | 1122557899         |
      | email    | roberval@ninja.com |
      | tipo     | Gold               |
      | obs      | Lorem Ipsum        |
Quando faço cadastro desse cliente
Então esse cliente deve ser exibido na busca
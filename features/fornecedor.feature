Feature: Fornecedor
	As a administrador do sistema
	I want to adicionar, remover, ver e editar fornecedores
	So that eu nao tenha que fazer isso manualmente

Scenario: Cadastro de fornecedor com sucesso
	Given Eu estou na pagina de cadastro de fornecedores
	When Eu preencho o campo de nome com 'SA Alimentos' e o campo cnpj com '23.123.123/0002-55'
	And Eu clico no botao de cadastrar
	Then Eu vejo uma mensagem informando que o fornecedor 'SA Alimentos' foi salvo com sucesso

Scenario: Cadastro de fornecedor com nome em branco
	Given Eu estou na pagina de cadastro de fornecedores
	When Eu preencho o campo de nome com '' e o campo cnpj com '23.123.000/0002-00'
	And Eu clico no botao de cadastrar
	Then Eu vejo uma mensagem de erro informando que o nome nao pode estar em branco

Scenario: Cadastro de fornecedor com cnpj em branco
 	Given Eu estou na pagina de cadastro de fornecedores
 	When Eu preencho o campo de nome com 'SA Alimentos' e o campo cnpj com ''
 	And Eu clico no botao de cadastrar
 	Then Eu vejo uma mensagem de erro informando que o cnpj nao pode estar em branco

Scenario: Cadastro de fornecedor com nome menor que 6 caracteres
 	Given Eu estou na pagina de cadastro de fornecedores
 	When Eu preencho o campo de nome com 'SA' e o campo cnpj com '23.123.000/0002-00'
 	And Eu clico no botao de cadastrar
 	Then Eu vejo uma mensagem de erro informando que o nome deve possuir mais de 6 caracteres

Scenario: Cadastro de fornecedor com cnpj invalido
 	Given Eu estou na pagina de cadastro de fornecedores
 	When Eu preencho o campo de nome com 'SA Alimentos' e o campo cnpj com '23'
 	And Eu clico no botao de cadastrar
 	Then Eu vejo uma mensagem de erro informando que o cnpj deve possuir 14 caracteres



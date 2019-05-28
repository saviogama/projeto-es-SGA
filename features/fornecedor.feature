Feature: Fornecedor
	As a administrador do sistema
	I want to adicionar, remover, ver e editar fornecedores
	So that eu nao tenha que fazer isso manualmente

Scenario: Cadastro de fornecedor com sucesso
	Given Eu estou na pagina de cadastro de fornecedores
	When Eu preencho o campo de nome com 'SA Alimentos' e o campo cnpj com '23.123.123/0002-55'
	And Eu clico no botao de cadastro
	Then Eu vejo uma mensagem informando que o fornecedor 'SA Alimentos' foi salvo com sucesso

Scenario: Cadastro de fornecedor com nome em branco
	Given Eu estou na pagina de cadastro de fornecedores
	When Eu preencho o campo de nome com '' e o campo cnpj com '23.123.000/0002-00'
	And Eu clico no botao de cadastro
	Then Eu vejo uma mensagem de erro informando que o nome nao pode estar em branco

Scenario: Cadastro de fornecedor com cnpj em branco
 	Given Eu estou na pagina de cadastro de fornecedores
 	When Eu preencho o campo de nome com 'SA Alimentos' e o campo cnpj com ''
 	And Eu clico no botao de cadastro
 	Then Eu vejo uma mensagem de erro informando que o cnpj nao pode estar em branco

Scenario: Editar cadastro de fornecedor com sucesso
 	Given Eu estou na pagina de fornecedores
	And Eu vejo o fornecedor 'SA Alimentos' com o cnpj '23.123.000/0002-00' e clico em editar
 	When Eu preencho o campo de nome com 'SA Alimentos LTD' e o campo cnpj com '23.123.123/000-55'
 	And Eu clico no botao de editar
 	Then Eu vejo uma mensagem informando que o fornecedor 'SA Alimentos LTD' foi salvo com sucesso

Scenario: Visualizar cadastro de fornecedor
 	Given Eu estou na pagina de cadastro de fornecedores
	When Eu vejo o fornecedor 'SA Alimentos' com o cnpj '23.123.000/0002-00'
 	And Eu clico em ver
 	Then Eu vejo os detalhes do nome e do cnpj do fornecedor 'SA Alimentos'


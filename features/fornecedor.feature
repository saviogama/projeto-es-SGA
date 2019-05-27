Feature: Fornecedor
	As a usuario do sistema
	I want to adicionar, remover, ver e editar fornecedores
	So that eu nao tenho que faer isso manualmente


Scenario: novo cadastro de fornecedor com sucesso
	Given Eu estou na pagina de novo cadastro
	When Eu preencho o campo de novo com 'SA Alimentos' e o campo cnpj com '23.123.123/0002-55' e o campo email com 'sa@alimentos'
	And Eu clico no botao de salvar cadastro
	Then Eu vejo uma mensagem que o novo forncedor com o nome de 'SA Alimentos' foi salvo com sucesso

Scenario: novo cadastro de forncedor com email invalido
	Given Eu estou na pagina de novo cadastro 
	When Eu preencho o campo de nome com 'GA Verduras' e o campo cnpj com '23.123.000/0002-00'
	And Eu clico no botao de salvar cadastro
	Then Eu vejo uma mensagem de erro de email invalido

Scenario: novo cadastro de fornecedor com cnpj ja existente

 	Given Eu estou na pagina de novo cadastro 
 	When Eu preencho o campo de nome com 'JO Frios' e o campo cnpj com '23.123.123/0002-55' e o campo email com 'jo@frios'
 	And Eu clico no boao de salvar cadastro
 	Then Eu vejo uma mensagem de erro de cnpj ja existente

 Scenario:novo cadastro de fornecedor com nome vazio
 	Given Eu preencho na pagina de nvo cadastro
 	When Eu preencho o campo de nome com '' e o campo cnpj com '23.123.123/000-55' e o campo email com 'ga@verduras'
 	And Eu clico no botao de salvar cadastro
 	Then Eu vejo uma mensagem de erro de nome vazio

Scenario: novo cadastro de fornecedor com cnpj invalido
	Given Eu estou na pagina de novo cadastro
	When Eu preencho o campo de nome com 'AD Carnes' e o campo cnpj com '23.123.123/0002-df' e o campo email com 'ad@carnes'
	And Eu clico no botao de salvar cadastro
	Then Eu vejo uma mensagem de erro de cnpj invalido

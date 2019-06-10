Feature: Estoque
	As a administrador do sistema
	I want to adicionar, remover, ver e editar estoques
	So that eu nao tenha que fazer isso manualmente

Scenario: Cadastro de estoque com sucesso
	Given Eu estou na pagina de cadastro de estoques
	When Eu preencho o campo de nome com 'Materiais de limpeza'
	And Eu clico no botao cadastrar
	Then Eu vejo uma mensagem informando que o estoque 'Materiais de limpeza' foi salvo com sucesso

Scenario: Cadastro de estoque com nome em branco
	Given Eu estou na pagina de cadastro de estoques
	When Eu preencho o campo de nome com ''
	And Eu clico no botao cadastrar
	Then Eu vejo uma mensagem de erro informando que o nome do estoque nao pode estar em branco

Scenario: Cadastro de estoque com nome menor que 6 caracteres
 	Given Eu estou na pagina de cadastro de estoques
 	When Eu preencho o campo de nome com 'Mats'
 	And Eu clico no botao cadastrar
 	Then Eu vejo uma mensagem de erro informando que o nome do estoque deve possuir mais de 6 caracteres

Scenario: Editar estoque com nome em branco
	Given Eu estou na pagina de estoques
	And Eu vejo o estoque com nome 'Materiais de limpeza' e clico em editar
	When Eu preencho o campo de nome com ''
	And Eu clico no botao de atualizar
	Then Eu vejo uma mensagem de erro informando que o nome do estoque nao pode estar em branco

Scenario: Editar estoque com nome menor que 6 caracteres
	Given Eu estou na pagina de estoques
	And Eu vejo o estoque com nome 'Materiais de limpeza' e clico em editar
	When Eu preencho o campo de nome com 'Mats'
	And Eu clico no botao de atualizar
	Then Eu vejo uma mensagem de erro informando que o nome do estoque deve possuir mais de 6 caracteres


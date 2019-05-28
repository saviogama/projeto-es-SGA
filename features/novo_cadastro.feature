Feature: Usuario
	As a usuario do sistema
	I want to adicionar, remover, ver e editar usuarios
	so that eu nao tenho que fazer isso manualmente

Scenario: Novo cadastro com sucesso
	Given Eu estou na pagina de cadastro
	When Eu preencho o campo de nome com 'Adilson Jose', o campo email com 'adilson@jose.com', o campo senha com '123789' e confirmo a senha com '123789'
	And Eu clico no botao de cadastro
	Then Eu vejo que o cadastro com o nome 'Adilson Jose' foi salvo com sucesso

Scenario: Cadastro incorreto nome em branco
	Given Eu estou na pagina de cadastro
	When Eu preencho o campo de nome com '', o campo email com 'adilson@jose.com', o campo senha com '123789' e confirmo a senha com '123789'
	And Eu clico no botao de cadastro
	Then Eu vejo uma mensagem de erro informando que o nome nao pode estar em branco

Scenario: Cadastro incorreto email em branco
	Given Eu estou na pagina de cadastro
	When Eu preencho o campo de nome com 'Adilson Jose', o campo email com '', o campo senha com '123789' e confirmo a senha com '123789'
	And Eu clico no botao de cadastro
	Then Eu vejo uma mensagem de erro informando que o email nao pode estar em branco

Scenario: Cadastro incorreto senha em branco
	Given Eu estou na pagina de cadastro
	When Eu preencho o campo de nome com 'Adilson Jose', o campo email com 'adilson@jose.com', o campo senha com '' e confirmo a senha com ''
	And Eu clico no botao de cadastro
	Then Eu vejo uma mensagem de erro informando que a senha nao pode estar em branco

Scenario: Cadastro incorreto senhas nao correspondem
	Given Eu estou na pagina de cadastro
	When Eu preencho o campo de nome com 'Adilson Jose', o campo email com 'adilson@jose.com', o campo senha com '123789' e confirmo a senha com ''
	And Eu clico no botao de cadastro
	Then Eu vejo uma mensagem de erro informando que as senhas nao correspondem




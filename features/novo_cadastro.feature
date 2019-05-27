Feature:Usuario
	As a [usuario do sistema]
	I want to [adicionar, remover, ver e editar usuarios]
	so that [eu nao tenho que fazer isso manualmente]


Scenario:novo cadastro com sucesso
	Given Eu estou na pagina de novo cadastro
	When Eu preencho o campo de nome 'Adilson Jose' o campo email com 'adilson@jose' e o campo senha '123789'
	And Eu clico no botao de salvar cadastro
	Then Eu vejo uma mensagem que o novo cadastro com o nome 'Adilson Jose' foi salvo com sucesso


Scenario:novo cadastro incorreto senha vazia
	Given Eu estou na pagina de novo cadastro
	When Eu preencho o campo de nome com 'Adilson Jose' o campo email com 'adislon@jose' e o campo senha ''
	And Eu clico no botao de salvar cadastro
	Then Eu vejo uma mensagem de erro de senha vazia

Scenario: login incorreto
	Given Eu estou na pagina de login
	When Eu preencho o campo email com 'adilsonjose' e o campo senha com '123789'
	And Eu clico no botao de logar
	Then Eu vejo uma mensagem de erro de email incorreto

Scenario:login correto
	Given Eu estou na pagina de login
	When Eu preencho o caompo email com 'adilson@jose' e o campo senha com '123789'
	And Eu clico no botao de logar
	Then Eu vejo que entrei no login de email 'adilson@jose' com sucesso

Scenario:login incorreto
	Given Eu estou na pagina de login
	When Eu preencho o campo email com 'adilson@jose' e o campo senha '123789'
	And Eu clico no botao jogar
	Then Eu vejo uma mensagem de erro de email não cadastrado



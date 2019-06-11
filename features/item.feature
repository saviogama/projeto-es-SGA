Feature: Item
	As a administrador do sistema
	I want to adicionar, remover, ver e editar itens no estoque
	So that eu nao tenha que fazer isso manualmente

Scenario: Cadastro de item com sucesso
	Given Eu estou na pagina do estoque 'Materiais de limpeza'
	When Eu preencho o campo de nome com 'Detergente', a data de validade com '09/09/2020', o numero do lote com '15554', a descricao com 'Detergente comum' e a unidade com '10'
	And Eu clico no botao de criar
	Then Eu vejo que o item 'Detergente' foi salvo com sucesso

Scenario: Cadastro de item com nome em branco
	Given Eu estou na pagina do estoque 'Materiais de limpeza'
	When Eu preencho o campo de nome com '', a data de validade com '09/09/2020', o numero do lote com '15554', a descricao com 'Detergente comum' e a unidade com '10'
	And Eu clico no botao de criar
	Then Eu vejo que o item 'Detergente' nao foi salvo

Scenario: Cadastro de item com nome menor que 6 caracteres
	Given Eu estou na pagina do estoque 'Materiais de limpeza'
	When Eu preencho o campo de nome com 'Deter', a data de validade com '09/09/2020', o numero do lote com '15554', a descricao com 'Detergente comum' e a unidade com '10'
	And Eu clico no botao de criar
	Then Eu vejo que o item 'Detergente' nao foi salvo

Scenario: Cadastro de item com validade em branco
	Given Eu estou na pagina do estoque 'Materiais de limpeza'
	When Eu preencho o campo de nome com 'Detergente', a data de validade com '', o numero do lote com '15554', a descricao com 'Detergente comum' e a unidade com '10'
	And Eu clico no botao de criar
	Then Eu vejo que o item 'Detergente' nao foi salvo

Scenario: Cadastro de item com validade invalida
	Given Eu estou na pagina do estoque 'Materiais de limpeza'
	When Eu preencho o campo de nome com 'Detergente', a data de validade com '090/200', o numero do lote com '15554', a descricao com 'Detergente comum' e a unidade com '10'
	And Eu clico no botao de criar
	Then Eu vejo que o item 'Detergente' nao foi salvo


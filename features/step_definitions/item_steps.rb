Given ("Eu estou na pagina do estoque {string}") do |nome|
	visit '/estoques/new'
	fill_in 'estoque[nome]', with: nome
	click_button 'Create Estoque'

	visit '/estoques'
	expect(page).to have_content(nome)
	click_link 'Ver'
end

When ("Eu preencho o campo de nome com {string}, a data de validade com {string}, o numero do lote com {string}, a descricao com {string} e a unidade com {string}") do |nome, validade, lote, desc, unidade|
	fill_in 'item[nome]', with: nome
	fill_in 'item[data_val]', with: validade
	fill_in 'item[n_lote]', with: lote
	fill_in 'item[desc]', with: desc
	fill_in 'item[unidade]', with: unidade
end

And ("Eu clico no botao de criar") do
	click_button 'Create Item'	
end

Then ("Eu vejo que o item {string} nao foi salvo") do |nome|
	expect(page).to have_no_content(nome)
end

Then ("Eu vejo que o item {string} foi salvo com sucesso") do |nome|
	expect(page).to have_content(nome)
end


Given ("Eu estou na pagina de cadastro de estoques") do
	visit '/estoques/new'
	expect(page).to have_content("New Estoque")
end

Given ("Eu estou na pagina de estoques") do
	visit '/estoques'
	expect(page).to have_content("Estoques")
end

When ("Eu preencho o campo de nome com {string}") do |nome|
	fill_in 'estoque[nome]', with: nome
end

And ("Eu clico no botao cadastrar") do
	click_button 'Create Estoque'	
end

And ("Eu clico no botao de atualizar") do
	click_button 'Update Estoque'	
end

And ("Eu vejo o estoque com nome {string} e clico em editar") do |nome|
	visit '/estoques/new'
	fill_in 'estoque[nome]', with: nome
	click_button 'Create Estoque'	

	visit '/estoques'
	expect(page).to have_content(nome)
	click_link "e-#{nome}"
end

Then ("Eu vejo uma mensagem de erro informando que o nome do estoque nao pode estar em branco") do
	expect(page).to have_content("Nome can't be blank")
end

Then ("Eu vejo uma mensagem informando que o estoque {string} foi salvo com sucesso") do |nome|
	expect(page).to have_content(nome)
end

Then ("Eu vejo uma mensagem de erro informando que o nome do estoque deve possuir mais de 6 caracteres") do
	expect(page).to have_content("Nome is too short (minimum is 6 characters)")
end





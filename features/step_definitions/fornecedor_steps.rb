Given ("Eu estou na pagina de cadastro de fornecedores") do
	visit '/fornecedors/new'
	expect(page).to have_content("New Fornecedor")
end

Given ("Eu estou na pagina de fornecedores") do
	visit '/fornecedors'
	expect(page).to have_content("Fornecedores")
end

When ("Eu preencho o campo de nome com {string} e o campo cnpj com {string}") do |nome, cnpj|
	fill_in 'fornecedor[nome]', with: nome
	fill_in 'fornecedor[cnpj]', with: email
end

When ("Eu vejo o fornecedor {string} com o cnpj {string}") do |nome, cnpj|
	expect(page).to have_content(nome)
	expect(page).to have_content(cnpj)
end

And ("Eu vejo o fornecedor {string} com o cnpj {string} e clico em editar") do |nome, cnpj|
	click_link 'edit'	
end

And ("Eu clico no botao de editar") do
	click_button 'edit'	
end

And ("Eu clico em ver") do
	click_link 'show'	
end

Then ("Eu vejo uma mensagem de erro informando que o nome nao pode estar em branco") do
	expect(page).to have_content("Nome can't be blank")
end

Then ("Eu vejo uma mensagem de erro informando que o cnpj nao pode estar em branco") do
	expect(page).to have_content("Cnpj can't be blank")
end

Then ("Eu vejo uma mensagem informando que o fornecedor {string} foi salvo com sucesso") do |nome|
	expect(page).to have_content(nome)
end

Then ("Eu vejo os detalhes do nome e do cnpj do fornecedor {string}") do |nome|
	expect(page).to have_content(nome)
end



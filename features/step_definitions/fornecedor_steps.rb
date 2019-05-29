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
	fill_in 'fornecedor[cnpj]', with: cnpj
end

And ("Eu clico no botao de cadastrar") do
	click_button 'Create Fornecedor'	
end

Then ("Eu vejo uma mensagem de erro informando que o cnpj nao pode estar em branco") do
	expect(page).to have_content("Cnpj can't be blank")
end

Then ("Eu vejo uma mensagem informando que o fornecedor {string} foi salvo com sucesso") do |nome|
	expect(page).to have_content(nome)
end

Then ("Eu vejo uma mensagem de erro informando que o nome deve possuir mais de 6 caracteres") do
	expect(page).to have_content("Nome is too short (minimum is 6 characters)")
end

Then ("Eu vejo uma mensagem de erro informando que o cnpj deve possuir 14 caracteres") do
	expect(page).to have_content("Cnpj is too short (minimum is 14 characters)")
end




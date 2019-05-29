Given ("Eu estou na pagina de cadastro") do
	visit '/administradors/new'
	expect(page).to have_content("Cadastrar-se")
end

When ("Eu preencho o campo de nome com {string}, o campo email com {string}, o campo senha com {string} e confirmo a senha com {string}") do |nome, email, password, password_confirmation|
	fill_in 'administrador[nome]', with: nome
	fill_in 'administrador[email]', with: email
	fill_in 'administrador[password]', with: password
	fill_in 'administrador[password_confirmation]', with: password_confirmation
end

And ("Eu clico no botao de cadastro") do
	click_button 'Cadastrar'	
end

Then ("Eu vejo que o cadastro com o nome {string} foi salvo com sucesso") do |nome|
	expect(page).to have_content(nome)
end

Then ("Eu vejo uma mensagem de erro informando que o nome nao pode estar em branco") do
	expect(page).to have_content("Nome can't be blank")
end

Then ("Eu vejo uma mensagem de erro informando que o email nao pode estar em branco") do
	expect(page).to have_content("Email can't be blank")
end

Then ("Eu vejo uma mensagem de erro informando que a senha nao pode estar em branco") do
	expect(page).to have_content("Password can't be blank")
end

Then ("Eu vejo uma mensagem de erro informando que as senhas nao correspondem") do
	expect(page).to have_content("Password confirmation doesn't match Password")
end



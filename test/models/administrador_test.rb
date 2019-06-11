require 'test_helper'

class AdministradorTest < ActiveSupport::TestCase
  test "nome administrador correto" do
    administrador = Administrador.new(nome: 'NomeTeste')
    assert_equal 'NomeTeste', administrador.nome
  end

  test "email administrador correto" do
    administrador = Administrador.new(email: 'teste@gmail.com')
    assert_equal 'teste@gmail.com', administrador.email
  end

  test "nao salvar administrador sem nome, email e senha" do
    administrador = Administrador.new
    assert_not administrador.save
  end

  test "nao salvar administrador sem nome" do
    administrador = Administrador.new(email: 'teste@gmail.com', password: '123456', password_confirmation: '123456')
    assert_not administrador.save
  end

  test "nao salvar administrador sem email" do
    administrador = Administrador.new(nome: 'NomeTeste', password: '123456', password_confirmation: '123456')
    assert_not administrador.save
  end

  test "nao salvar administrador sem senha" do
    administrador = Administrador.new(nome: 'NomeTeste', email: 'teste@gmail.com', password_confirmation: '123456')
    assert_not administrador.save
  end

end

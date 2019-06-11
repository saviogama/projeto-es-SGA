require 'test_helper'

class EstoqueTest < ActiveSupport::TestCase
  test "nome do estoque correto" do
    estoque = Estoque.new(nome: 'NomeTeste')
    assert_equal 'NomeTeste', estoque.nome
  end

  test "nao salvar estoque caracteres invalidos" do
    estoque = Estoque.new(nome: 'Est')
    assert_not estoque.save
  end

  test "nao salvar estoque sem nome" do
    estoque = Estoque.new
    assert_not estoque.save
  end
end

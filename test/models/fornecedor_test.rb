require 'test_helper'

class FornecedorTest < ActiveSupport::TestCase
  test "nome fornecedor correto" do
    fornecedor = Fornecedor.new(nome: 'NomeTeste', cnpj: '20456498749879461654')
    assert_equal 'NomeTeste', fornecedor.nome
  end

  test "cnpj fornecedor correto" do
    fornecedor = Fornecedor.new(nome: 'NomeTeste', cnpj: '23.123.123/0002-55')
    assert_equal '23.123.123/0002-55', fornecedor.cnpj
  end

  test "nao salvar fornecedor sem nome e cnpj" do
    fornecedor = Fornecedor.new
    assert_not fornecedor.save
  end
end

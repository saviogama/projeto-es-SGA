class Fornecedor < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 6}
  validates :cnpj, presence: true, length: {minimum: 14}
end

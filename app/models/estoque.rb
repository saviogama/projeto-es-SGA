class Estoque < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 6}
end

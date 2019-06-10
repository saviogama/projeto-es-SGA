class Estoque < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 6}
  has_many :items
end

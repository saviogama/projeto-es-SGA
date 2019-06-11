class Item < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 6}
  validates :data_val, presence: true, length: {minimum: 8}
  belongs_to :estoque
end

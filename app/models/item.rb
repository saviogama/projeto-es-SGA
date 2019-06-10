class Item < ApplicationRecord
	belongs_to :estoque
	belongs_to :contrato
end

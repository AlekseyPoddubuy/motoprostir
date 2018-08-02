class LineProduct < ApplicationRecord

	belongs_to :order, optional: true
	belongs_to :item, optional: true

	belongs_to :cart

	def total_price
		item.price * quantity
	end

	def total_quantity
		quantity + quantity	
	end
	
end

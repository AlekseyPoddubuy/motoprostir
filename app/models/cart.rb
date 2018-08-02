class Cart < ApplicationRecord



	has_many :line_products, dependent: :destroy
	has_many :items, through: :line_products




	def add_item(item)
		current_product = line_products.find_by(item_id: item.id)
		if current_product
			current_product.quantity += 1
		else
			current_product = line_products.build(item_id: item.id)
		end
		current_product
	end

	def total_price
		line_products.to_a.sum { |item| item.total_price }
	end

	def total_quantity
		line_products.to_a.sum { |item| item.quantity }
	end
end

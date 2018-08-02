class Order < ApplicationRecord
	has_many :line_products, dependent: :destroy


	def add_line_products_from_cart(cart)
		cart.line_products.each do |product|
			product.cart_id = nil
			line_products << product
		end
	end


	def total_price
		line_products.sum { |item| item.total_price }
	end




end
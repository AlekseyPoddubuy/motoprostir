class CombineProductsInCart < ActiveRecord::Migration[5.1]
	def up

		Cart.all.each do |cart|
			sums = cart.line_products.group(:item_id).sum(:quantity)
			sums.each do |item_id, quantity|
				if quantity > 1

					cart.line_products.where(item_id: item_id).delete_all

					product = cart.line_products.build(item_id: item_id)
					product.quantity = quantity
					product.save!
				end
			end
		end
	end

	def down

		LineProduct.where("quantity>1").each do |line_product|

			line_product.quantity.times do
				LineProduct.create(
					cart_id: line_product.cart_id,
					product_id: line_product.item_id,
					quantity: 1
					)
			end

			line_product.destroy
		end
	end

end

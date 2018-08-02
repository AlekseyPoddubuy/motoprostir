class Search < ApplicationRecord

	def search_items

		items = Item.all

		items = items.where(["title LIKE ?", "%#{keywords}%"]) if keywords.present?

		return items
	end	
end
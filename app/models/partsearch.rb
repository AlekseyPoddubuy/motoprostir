class Partsearch < ApplicationRecord

	def search_parts

		parts = Part.all

		parts = parts.where(brand_id: brand_id) if brand_id.present?

		return parts
	end	

end

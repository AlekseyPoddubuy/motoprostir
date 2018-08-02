class Section < ApplicationRecord

	has_many :post_sections
	has_many :posts, through: :post_sections

	extend FriendlyId
	friendly_id :title, use: :slugged
end

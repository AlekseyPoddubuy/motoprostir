class Post < ApplicationRecord

	has_many :post_sections
	has_many :sections, through: :post_sections

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	is_impressionable
end

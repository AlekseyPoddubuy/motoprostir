class Item < ApplicationRecord

	belongs_to :category

	has_many :photos
	has_many :reviews
	has_many :line_products
	has_many :orders, :through => :line_products


	accepts_nested_attributes_for :photos

	has_attached_file :avatar, styles: { medium: "360x360>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	before_destroy :ensure_not_referenced_by_any_line_product

	private

	def ensure_not_referenced_by_any_line_product
		unless line_products.empty?
			errors.add(:base, 'Line Items present')
			throw :abort
		end
	end
end
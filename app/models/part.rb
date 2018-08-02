class Part < ApplicationRecord
	belongs_to :brand
	has_many :part_assets
	accepts_nested_attributes_for :part_assets, allow_destroy: true
end

class PostSection < ApplicationRecord
	belongs_to :post
	belongs_to :section
end

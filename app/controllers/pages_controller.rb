class PagesController < ApplicationController
	include CurrentCart
	before_action :set_cart

	def index
		@categories = Category.all
		@carts = Cart.all
		@items = Item.all
		@posts = Post.order(created_at: :desc).last(1)
	end

	def cooperation
		@cooperation = Cooperation.new
	end

	def about
	end

	def contacts
	end

	def regards
	end
end

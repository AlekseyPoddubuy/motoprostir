class PagesController < ApplicationController
	include CurrentCart
	before_action :set_cart
	before_action :authenticate_admin!, only: [:categorylist]
	layout 'admins', only: [:categorylist]

	def index
		@categories = Category.all
		@carts = Cart.all
		@items = Item.all
		@posts = Post.order(created_at: :desc).last(3)
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

	def categorylist
		@categories = Category.all
	end
end

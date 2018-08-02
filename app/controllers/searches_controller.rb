class SearchesController < ApplicationController
	
	include CurrentCart
	before_action :set_cart
	
	def new
		@search = Search.new
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def update
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
	end

	private

	def search_params
		params.require(:search).permit(:keywords)
	end

end
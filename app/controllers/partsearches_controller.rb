class PartsearchesController < ApplicationController
	include CurrentCart
	before_action :set_cart
	
	def new
		@partsearch = Partsearch.new
	end

	def create
		@partsearch = Partsearch.create(partsearch_params)
		redirect_to @partsearch
	end

	def update
		@partsearch = Partsearch.create(partsearch_params)
		redirect_to @partsearch
	end

	def show
		@partsearch = Partsearch.find(params[:id])
	end

	private

	def partsearch_params
		params.require(:partsearch).permit(:brand_id)
	end

end

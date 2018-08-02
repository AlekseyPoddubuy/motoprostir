class PhotosController < ApplicationController

	def create

		@item = Item.find(params[:item_id])
		@photo = @item.photos.create(params[:photo].permit(:title, :avatar))
		redirect_to item_path(@item)
	end

	def destroy
		@item = Item.find(params[:item_id])
		@photo = @item.photos.find(params[:id])
		@photo.destroy
		redirect_to item_path(@item)
	end

end

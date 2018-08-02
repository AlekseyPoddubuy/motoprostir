class ReviewsController < ApplicationController
	before_action :set_review, only: [:edit, :update, :destroy]
	before_action :authenticate_admin!, except: [:new, :create, :index]

	def index
		@reviews = Review.all
	end

	def create

		@item = Item.find(params[:item_id])
		@review = @item.reviews.create(params[:review].permit(:name, :surname, :body, :status))


		flash[:error] = "Дякуємо за відгук"
		redirect_to item_path(@item)
	end

	def edit
	end

	def update
		respond_to do |format|
			if @review.update(review_params)
				format.html { redirect_to reviews_path, notice: 'fsdsdsd.' }
				format.json { render :show, status: :ok, location: @review }
			end
		end
	end




	def destroy
		@item = Item.find(params[:item_id])
		@review = @item.reviews.find(params[:id])
		@review.destroy
		redirect_to item_path(@item)
	end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
    	@review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
    	params.require(:review).permit(:name, :surname, :body, :status)
    end

end
class FastordersController < ApplicationController
	def new
		@fastorder = Fastorder.new
	end

	def create
		@fastorder = Fastorder.new(params[:fastorder])
		@fastorder.request = request
		if @fastorder.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Cannot send message'
			render :new
		end
	end

end

class CooperationsController < ApplicationController
	def new
		@cooperation = Cooperation.new
	end

	def create
		@cooperation = Cooperation.new(params[:cooperation])
		@cooperation.request = request
		if @cooperation.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Cannot send message'
			render :new
		end
	end

end

class SubscribersController < ApplicationController

	def new
		@subscriber = Subscriber.new
	end

	def create
		st
		@subscriber = Subscriber.new(params[:subscriber])
		@subscriber.request = request
		if @subscriber.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Cannot send message'
			render :new
		end
	end

end
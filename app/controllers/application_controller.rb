class ApplicationController < ActionController::Base
	before_action :subscribers, :big_scope

	protect_from_forgery with: :exception

	def big_scope
		@search = Search.new
		@posts =Post.all
		@orders = Order.all
	end

	def posts_on_main
		@posts =Post.all
	end

	def subscribers
		@subscriber = Subscriber.new
	end
end

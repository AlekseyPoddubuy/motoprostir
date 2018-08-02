class ApplicationController < ActionController::Base
	before_action :header_search, :subscribers

	protect_from_forgery with: :exception

	def header_search
		@search = Search.new
	end

	def posts_on_main
		@posts =Post.all
	end

	def subscribers
		@subscriber = Subscriber.new
	end
end

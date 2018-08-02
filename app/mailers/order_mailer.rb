class OrderMailer < ApplicationMailer
	default from: 'it@euroukrgroup.com'

	def order_notification(order)
		@order = order
		mail(to: 'it@euroukrgroup.com', subject: 'New Order Comment')
	end
end
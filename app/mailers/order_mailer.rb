class OrderMailer < ApplicationMailer
	default from: 'kymotocycle@gmail.com'

	def order_notification(order)
		@order = order
		mail(to: 'kymotocycle@gmail.com', subject: 'Нове замовлення на сайті MOTOPROSTIR')
	end
end
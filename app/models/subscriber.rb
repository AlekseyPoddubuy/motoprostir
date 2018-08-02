class Subscriber < MailForm::Base
	attribute :letter, :validate => true

	def headers 
		{
			:subject => "Лайк и подписка)",
			:to => "it@euroukrgroup.com",
			:from => %("#{letter}" <it@euroukrgroup.com>)
		}
	end
end
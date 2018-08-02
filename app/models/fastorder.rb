class Fastorder < MailForm::Base
	attribute :name, :validate => true
	attribute :phone, :validate => true
	attribute :link, :validate => true
	attribute :comment, :validate => true

	def headers 
		{
			:subject => "Лайк и подписка)",
			:to => "it@euroukrgroup.com",
			:from => %("#{name}" <it@euroukrgroup.com>)
		}
	end
end
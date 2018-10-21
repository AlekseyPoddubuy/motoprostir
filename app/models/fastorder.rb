class Fastorder < MailForm::Base

	attribute :name, :validate => true
	attribute :phone, :validate => true
	attribute :link, :validate => true
	attribute :comment, :validate => true

	def headers 
		{
			:subject => "Швидке замовлення",
			:to => "kymotocycle@gmail.com, it@euroukrgroup.com",
			:from => %("#{name}" <kymotocycle@gmail.com>)
		}
	end
end
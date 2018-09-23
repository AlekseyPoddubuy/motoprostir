class Cooperation < MailForm::Base
	attribute :name, :validate => true
	attribute :phone, :validate => true
	attribute :mail, :validate => true
	attribute :type, :validate => true
	attribute :comment, :validate => true

	def headers 
		{
			:subject => "Лайк и подписка)",
			:to => "kymotocycle@gmail.com",
			:from => %("#{name}" <kymotocycle@gmail.com>)
		}
	end
end
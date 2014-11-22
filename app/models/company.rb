class Company < ActiveRecord::Base
	has_many :QuestionsHasCompanies
	has_many :questions, through: :QuestionsHasCompanies

	def display_name
		self.stringName # or whatever column you want
	end
end

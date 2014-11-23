class Company < ActiveRecord::Base
	#has_many :QuestionsHasCompanies
	#has_many :questions, through: :QuestionsHasCompanies


	has_and_belongs_to_many :questions, :join_table => "questions_has_companies"

	def display_name
		self.stringName # or whatever column you want
	end
end

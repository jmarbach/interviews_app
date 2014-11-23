class Question < ActiveRecord::Base
	has_one :answer

	#has_many :QuestionsHasCompanies
	#has_many :companies, through: :QuestionsHasCompanies
	
	has_and_belongs_to_many :companies, :join_table => "questions_has_companies"


	belongs_to :job_type
	belongs_to :topic

	def display_name
		self.textQuestion
	end
end

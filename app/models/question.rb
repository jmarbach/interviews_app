class Question < ActiveRecord::Base
	has_one :answer

	has_many :QuestionsHasTopics
	has_many :topics, through: :QuestionsHasTopics

	has_many :QuestionsHasCompanies
	has_many :companies, through: :QuestionsHasCompanies
	

end

class Question < ActiveRecord::Base
	has_one :answer

	has_many :QuestionsHasTopic
	has_many :QuestionHasCompany
	has_many :companies, through: :QuestionsHasTopic
	has_many :companies, through: :QuestionHasCompany

end

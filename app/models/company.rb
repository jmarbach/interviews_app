class Company < ActiveRecord::Base
	has_many :QuestionsHasCompanies
	has_many :questions, through: :QuestionsHasCompanies
end

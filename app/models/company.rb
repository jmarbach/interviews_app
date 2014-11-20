class Company < ActiveRecord::Base
	has_many :QuestionHasCompany
	has_many :questions, through: :QuestionHasCompany
end

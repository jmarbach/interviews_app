class Question < ActiveRecord::Base
	has_one :answer
	belongs_to :company 
	belongs_to :topic
end

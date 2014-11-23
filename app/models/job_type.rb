class JobType < ActiveRecord::Base
	#has_many :TopicHasJobTypes
	#has_many :topics, through: :TopicHasJobTypes

	has_many :questions

	def display_name
		self.stringJobTypec
	end
end

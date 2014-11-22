class JobType < ActiveRecord::Base
	has_many :TopicHasJobTypes
	has_many :topics, through: :TopicHasJobTypes

	def display_name
		self.stringJobTypec
	end
end

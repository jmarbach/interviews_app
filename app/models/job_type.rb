class JobType < ActiveRecord::Base
	 has_many :TopicHasJobTypes
	 has_many :topics, through: :TopicHasJobTypes
end

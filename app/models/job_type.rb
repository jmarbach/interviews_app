class JobType < ActiveRecord::Base
	 has_many :TopicHasJobType
	 
	 has_many :topics, through :TopicHasJobType
end

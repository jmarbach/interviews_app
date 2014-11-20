class Topic < ActiveRecord::Base
  has_many :QuestionHasTopic
  has_many :TopicHasJobType

  has_many :questions, through :QuestionHasTopic
  has_many :job_types, through :TopicHasJobType
end

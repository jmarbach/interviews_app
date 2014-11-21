class Topic < ActiveRecord::Base
  has_many :QuestionsHasTopics
  has_many :questions, through: :QuestionsHasTopics

  has_many :TopicHasJobTypes
 # !!! NEEDS DEBUGGING !!! 
 #has_many :job_types, through: :TopicHasJobTypes
 # 

end

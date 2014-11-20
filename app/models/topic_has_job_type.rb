class TopicHasJobType < ActiveRecord::Base
  belongs_to :topic
  belongs_to :job_types
end

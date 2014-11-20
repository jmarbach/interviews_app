class Topic < ActiveRecord::Base
  has_many :questions
  has_many :job_types
end

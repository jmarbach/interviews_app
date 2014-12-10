class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def sample_question
  	@question = Question.first
  	@topic = Topic.first
  	@jobtype = JobType.first

  	@answer = @question.answer
  	#@topic = @question.topic
  	#@jobtype = @question.job_type
  end

end

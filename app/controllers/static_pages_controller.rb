class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def sample_question

    # Select Questions from Questions where Question.id = "1"
    @question = Question.find_by textQuestion: "How many golf balls fit into a 747?"
    
    @answer = @question.answer

    @topic = @question.topic

    @jobtype = JobType.first

   # @jobtype = @question.job_type
  
    @companies = @question.questions_has_companies 
  end

end

class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def sample_question

    # Select Questions from Questions where Question.id = "1"
    @question = Question.find_by textQuestion: "How many golf balls fit into a 747?"
    @topic = Topic.first
  	@jobtype = JobType.first
   
  	@answer = @question.answer
    @companies = @question.companies

  end

end

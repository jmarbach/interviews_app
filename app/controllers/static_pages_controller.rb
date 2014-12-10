class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def sample_question
  	@question = Question.first
  	@answer = @question.answer

  end

end

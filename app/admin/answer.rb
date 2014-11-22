ActiveAdmin.register Answer do

  menu priority: 3

  permit_params :textQustion, :textAnswer, :question_id, :answers_id, :textQuestion

  index do
    selectable_column
    id_column
    column "Question" do |m|
      question = Question.find(m.question_id).textQuestion
    end 
   
    #column "Question" do |m|
    #  name = Question.find(m.Question_id).textQuestion
    #end 

    actions
  end

  form do |f|
    f.inputs "Answer" do
      f.input :textAnswer, :label => "Answer", as: :wysihtml5
      f.input :question_id, :as => :select, :collection => Question.all
    end
    f.actions
  end



end


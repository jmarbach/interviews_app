ActiveAdmin.register Answer do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :textQustion, :textAnswer, :question_id, :answers_id, :question_id

  index do
    selectable_column

    column 'Question ID', :question_id
    column 'Answer', :textAnswer
   
    #column "Question" do |m|
    #  name = Question.find(m.Question_id).textQuestion
    #end 

    actions
  end



end

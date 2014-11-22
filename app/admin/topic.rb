ActiveAdmin.register Topic do

menu priority: 5

permit_params :stringTopic, :stringJobTypec, :topic_id, :job_types_id, :question_id 


index do
  selectable_column
  column 'Topic', :stringTopic
  actions
end

form do |f|
    f.inputs "Topic" do
      f.input :stringTopic, :label => "Question Topic"
    #  f.input :stringTopic, :label => "Job Types", :as => :check_boxes, :collection => Job_Types.all
    end
  f.actions
end


end

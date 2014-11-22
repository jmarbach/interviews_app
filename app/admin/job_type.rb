ActiveAdmin.register JobType do

menu priority: 6

permit_params :stringJobTypec, :stringTopic, :job_types_id, :topic_id, :stringTopic

index do
  selectable_column
  column 'Job Type', :stringJobTypec
 # column 'Topics', :topic_id

 # column "Topics" do |m|
 #   name = Topic.find(m.topic_id).stringTopic rescue nil
 # end 
  actions
end

form do |f|
    f.inputs "Job Type" do
      f.input :stringJobTypec, :label => "Job Type"
      f.input :stringTopic, :label => "Question Topics", :as => :check_boxes, :collection => Topic.all
    end
  f.actions
end

end

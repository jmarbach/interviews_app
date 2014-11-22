ActiveAdmin.register Question do

permit_params :textQuestion, :textAnswer, :stringCompany, :company_id, :stringJobTypec, :stringTopic

menu priority: 2

index do
  selectable_column
  column 'Interview Question', :textQuestion
  column "Company Name" do |m|
    name = Company.find(m.company_id).stringName
  end 
  actions
end

 form do |f|
    f.inputs "Interview Question" do
      f.input :textQuestion, :label => "Question"
      f.input :stringCompany, :label => "Companies", :as => :check_boxes, :collection => Company.all
      f.input :stringTopic, :label => "Question Topic", :as => :check_boxes, :collection => Topic.all
    end
    f.actions
 end





end

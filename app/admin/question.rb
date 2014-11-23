ActiveAdmin.register Question do

permit_params :textQuestion, :textAnswer, :stringCompany, :company_id, :stringJobTypec, 
              :stringTopic, :topic_id, :job_types_id, :questions_has_companies

menu priority: 2

index do
  selectable_column
  column 'Interview Question', :textQuestion
  column "Company Name" do |question|

    c = Company.find_by_id(question.company_id) 
      
    if c 
      c.stringName else "No company"
    end 

  end 
  actions
end

 form do |f|
    f.inputs "Interview Question" do
      f.input :textQuestion, :label => "Question"
      f.input :companies, :label => "Companies", :as => :check_boxes, :collection => Company.all
      f.input :topic_id, :label => "Question Topic", :as => :select, :collection => Topic.all
      f.input :job_types_id, :label => "Job Type", :as => :select, :collection => JobType.all
    end

   # f.inputs "Companies" do
   #   f.input :id, :label => "Selected Companies",  
   #             :as => :check_boxes, 
   #             :multiple => true, 
   #             :collection => Company.all,
   #             :selected => @resources
   # end

    # f.inputs "Companies" do
    #   f.has_many :companies do |c|
    #     c.input :company_id,  :as => :check_boxes, :collection => Company.all rescue nil
    #   end
    # end


    f.actions
 end
end

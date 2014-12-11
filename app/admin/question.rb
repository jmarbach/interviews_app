ActiveAdmin.register Question do

permit_params :textQuestion, :company_id, :stringJobTypec, 
              :stringTopic, :topic_id, :job_types_id, :questions_has_companies, 
              :company, :companies,

              {questions_has_companies_attributes: [:company_id, :stringName, :question_id, :_destroy]}



menu priority: 2

index do
  selectable_column
  column 'Interview Question', :textQuestion
  
  column 'Companies' do |question|
        question.companies.map { |q| q.stringName }.join(", ").html_safe
  end
  
  column "Topic" do |question|
    t = Topic.find_by_id(question.topic_id) 
    if t 
      t.stringTopic else "No topic"
    end 
  end 

  column "Job Type" do |question|
    j = JobType.find_by_id(question.job_types_id) 
    if j 
      j.stringJobTypec else "No job type"
    end 
  end 
  actions
end

 form do |f|
    f.inputs "Interview Question" do
      f.input :textQuestion, :label => "Question"
      
      f.input :topic_id, :label => "Question Topic", :as => :select, :collection => Topic.all
      
      f.input :job_types_id, :label => "Job Type", :as => :select, :collection => JobType.all
      
      f.inputs "Companies" do
        f.has_many :questions_has_companies, :allow_destroy => true do |deg|
          deg.input :company
        end
      end
    end
    f.actions
 end
end


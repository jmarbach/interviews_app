ActiveAdmin.register Question do


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


permit_params :textQuestion, :textAnswer, :stringCompany, :company_id


index do
  selectable_column
  column 'Interview Question', :textQuestion
  #column 'Company ID', :company_id
  column "Company Name" do |m|
    name = Company.find(m.company_id).stringName
  end 
  actions
end

 form do |f|
    f.inputs "Interview Question" do
      f.input :textQuestion, :label => "Question"
    end
    f.actions
  end



end

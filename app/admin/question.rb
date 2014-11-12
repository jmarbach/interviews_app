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


permit_params :textQustion, :textAnswer, :stringCompany


index do
  selectable_column
  column 'Interview Question', :textQuestion
  column 'Answer', :textAnswer
  column 'Company Name', :stringCompany
  actions
end



end

ActiveAdmin.register JobType do


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

permit_params :stringJobTypec, :stringTopic, :job_types_id, :topic_id

index do
  selectable_column
  column 'Job Type', :stringJobTypec
  actions
end


end
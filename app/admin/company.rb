ActiveAdmin.register Company do


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
  
  permit_params :stringName, :stringLocation, :stringIndustry

  index do
    selectable_column
    column 'Company Name', :stringName
    column 'Location', :stringLocation
    column 'Industry', :stringIndustry
    actions
  end

  form do |f|
    f.inputs "Company Details" do
      f.input :stringName, :label => "Name"
      f.input :stringLocation, :label => "Location"
      f.input :stringIndustry, :label => "Industry"
    end
    f.actions
  end




end

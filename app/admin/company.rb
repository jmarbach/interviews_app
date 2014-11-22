ActiveAdmin.register Company do

  menu priority: 4
  
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

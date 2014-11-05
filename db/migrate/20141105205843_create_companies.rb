class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :stringName
      t.string :stringLocation
      t.string :stringIndustry

      t.timestamps
    end
  end
end

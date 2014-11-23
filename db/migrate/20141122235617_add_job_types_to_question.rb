class AddJobTypesToQuestion < ActiveRecord::Migration
  def change
  	      add_column :questions, :job_types_id, :integer, :null => false, :default => 0
  end
end

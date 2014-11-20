class AddJobTypeIdToTopic < ActiveRecord::Migration
  def change
  	 add_column :topics, :job_types_id, :integer, :null => false, :default => 0
  end
end

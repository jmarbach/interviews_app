class RemoveJobTypesFromTopics < ActiveRecord::Migration
  def change
  	remove_column :topics, :job_types_id
  end
end

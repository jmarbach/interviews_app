class AddTopicIdToJobTypes < ActiveRecord::Migration
  def change
  	   add_column :job_types, :topic_id, :integer
  end
end

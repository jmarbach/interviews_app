class RemoveTopicsFromJobTypes < ActiveRecord::Migration
  def change
  	remove_column :job_types, :topic_id
  end
end

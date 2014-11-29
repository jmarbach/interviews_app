class DropTopicHasJobTypes < ActiveRecord::Migration
  def change
  	drop_table :topic_has_job_types
  end
end

class AddTopicIdToQuestion < ActiveRecord::Migration
  def change
  	  add_column :questions, :topic_id, :integer, :null => false, :default => 0
  end
end

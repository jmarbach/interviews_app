class RemoveQuestionIdFromTopics < ActiveRecord::Migration
   def change
  	remove_column :topics, :question_id
  end
end

class DropQuestionsHasTopics < ActiveRecord::Migration
  def change
  	
    drop_table :questions_has_topics

  end
end

class CreateQuestionsHasTopics < ActiveRecord::Migration
  def change
    create_table :questions_has_topics do |t|
      t.references :question, index: true
      t.references :topic, index: true

      t.timestamps
    end
  end
end

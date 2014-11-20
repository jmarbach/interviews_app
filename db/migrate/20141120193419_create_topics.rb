class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :stringTopic
      t.references :question, index: true

      t.timestamps
    end
  end
end

class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_sentence

      t.timestamps
    end
   end
end

class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :text_answer

      t.timestamps
    end
  end
end

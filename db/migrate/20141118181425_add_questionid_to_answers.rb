class AddQuestionidToAnswers < ActiveRecord::Migration
  def change
	  add_column :answers, :question_id, :integer, :null => false, :default => 0

      add_column :questions, :company_id, :integer, :null => false, :default => 0
  end
end

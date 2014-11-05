class ChangeQuestionTableDatatype < ActiveRecord::Migration

change_column :questions, :question_sentence, :text

end
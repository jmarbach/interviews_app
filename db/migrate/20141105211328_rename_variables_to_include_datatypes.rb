class RenameVariablesToIncludeDatatypes < ActiveRecord::Migration
 
 change_table :questions do |t|
  t.rename :question_sentence, :textQuestion
 end

 change_table :answers do |t|
  t.rename :text_answer, :textAnswer
 end

end

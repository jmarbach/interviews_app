class CreateQuestionsHasCompanies < ActiveRecord::Migration
  def change
    create_table :questions_has_companies do |t|
      t.references :question, index: true
      t.references :company, index: true

      t.timestamps
    end
  end
end

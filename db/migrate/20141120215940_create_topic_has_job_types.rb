class CreateTopicHasJobTypes < ActiveRecord::Migration
  def change
    create_table :topic_has_job_types do |t|
      t.references :topic, index: true
      t.references :job_types, index: true

      t.timestamps
    end
  end
end

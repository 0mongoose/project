class CreateSubjectsTopics < ActiveRecord::Migration
  def change
    create_table :subjects_topics do |t|
      t.integer :subject_id
      t.integer :topic_id
      t.timestamps null: false
    end
  end
end

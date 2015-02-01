class CreateTopicsQuestions < ActiveRecord::Migration
  def change
    create_table :topics_questions do |t|
      t.integer :topic_id
      t.integer :question_id

      t.timestamps
    end
  end
end
